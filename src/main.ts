import PubNub from "pubnub";
import * as E from "fp-ts/Either";
import * as IO from "fp-ts/IO";
import * as J from "fp-ts/Json";
import { pipe } from "fp-ts/function";
import { match } from "ts-pattern";
import * as Sentry from "@sentry/browser";
import { BrowserTracing } from "@sentry/tracing";

import { Elm } from "./Main.elm";
import * as C from "./codecs";
import "./globals.css";

const app = Elm.Main.init({
  node: document.querySelector<HTMLDivElement>("#root"),
  flags: null,
});

Sentry.init({
  dsn: import.meta.env.VITE_SENTRY_DSN ?? "",
  integrations: [new BrowserTracing()],

  // Set tracesSampleRate to 1.0 to capture 100%
  // of transactions for performance monitoring.
  // We recommend adjusting this value in production
  tracesSampleRate: 1.0,
});

const isDev = () => import.meta.env.DEV;

const openExternalLink =
  (url: string): IO.IO<void> =>
  () => {
    return window.open(url, "_blank")?.focus();
  };

app.ports.interopFromElm.subscribe((fromElm) => {
  return match(fromElm)
    .with({ tag: "openExternalLink" }, ({ data }) => openExternalLink(data.url)())
    .with({ tag: "subscriptionCreds" }, ({ data }) => {
      const pubnub = new PubNub({
        subscribeKey: data.subscribeKey,
        userId: data.accountId,
        logVerbosity: isDev(),
      });

      pubnub.addListener({
        message: function (m) {
          // console.log("message:", m.message);

          pipe(
            J.parse(m.message),
            E.chainW((json) => {
              return pipe(
                C.workbookEventCodec.decode(json),
                E.altW(() => C.fileEventCodec.decode(json)),
                E.altW(() => C.jobEventCodec.decode(json)),
                E.altW(() => C.spaceEventCodec.decode(json)),
              );
            }),
            E.match(
              () => {
                console.warn("[DECODER] Unknown message:", m.message);

                if (!isDev()) {
                  Sentry.captureException(m.message);
                }
              },
              (m_) => {
                console.log(`[DECODER] Found: ${m_.domain}, ${m_.topic}`);
                app.ports.interopToElm.send(m_);
              },
            ),
          );
        },
      });

      pubnub.setToken(data.token);

      pubnub.subscribe({
        channels: [`space.${data.spaceId}`],
      });
    })
    .exhaustive();
});

// app.ports.interopFromElm.unsubscribe((_fromElm) => {});
