port module InteropPorts exposing (fromElm, toElm, decodeFlags)

{-| This file was generated by elm-ts-interop init. You can manually edit this file,
just avoid exposing the low-level ports to ensure that only the FromElm and ToElm types
can be sent/received by your ports.

@docs fromElm, toElm, decodeFlags

-}

import InteropDefinitions
import Json.Decode as D
import Json.Encode as E
import TsJson.Decode as TsDecode
import TsJson.Encode as TsEncode


{-| -}
fromElm : InteropDefinitions.FromElm -> Cmd msg
fromElm value =
    value
        |> (InteropDefinitions.interop.fromElm |> TsEncode.encoder)
        |> interopFromElm


toElm : Sub (Result D.Error InteropDefinitions.ToElm)
toElm =
    (InteropDefinitions.interop.toElm |> TsDecode.decoder)
        |> D.decodeValue
        |> interopToElm


{-| -}
decodeFlags : D.Value -> Result D.Error InteropDefinitions.Flags
decodeFlags flags =
    D.decodeValue
        (InteropDefinitions.interop.flags |> TsDecode.decoder)
        flags



-- INTERNALS - do not expose


port interopFromElm : E.Value -> Cmd msg


port interopToElm : (D.Value -> msg) -> Sub msg
