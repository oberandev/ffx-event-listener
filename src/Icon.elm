module Icon exposing
    ( arrowDown
    , arrowRight
    , calendar
    , chainlink
    , checkmark
    , defaults
    , eyeClose
    , eyeOpen
    , resetCircle
    , selectArrows
    , user
    , waitingRoom
    , withColor
    , withHeight
    , withSize
    , withWidth
    )

import Html exposing (Html)
import Svg exposing (..)
import Svg.Attributes as Attr


{-| Opaque type. DO NOT EXPOSE.
-}
type alias Args =
    { color : String
    , height : Int
    , width : Int
    }


defaults : Args
defaults =
    { color = "currentColor"
    , height = 0
    , width = 0
    }



-- Builder functions


withColor : String -> Args -> Args
withColor c args =
    { args | color = c }


withHeight : Int -> Args -> Args
withHeight h args =
    { args | height = h }


withWidth : Int -> Args -> Args
withWidth w args =
    { args | width = w }


withSize : Int -> Args -> Args
withSize s args =
    { args | height = s, width = s }



-- Custom icons


arrowRight : Args -> Html msg
arrowRight args =
    svg
        [ Attr.height <| String.fromInt args.height
        , Attr.width <| String.fromInt args.width
        , Attr.version "1.1"
        , Attr.viewBox "0 0 24 24"
        , Attr.fill args.color
        ]
        [ path
            [ Attr.d "M15.1997 10.4919L13.2297 8.52188L10.0197 5.31188C9.33969 4.64188 8.17969 5.12188 8.17969 6.08188V12.3119V17.9219C8.17969 18.8819 9.33969 19.3619 10.0197 18.6819L15.1997 13.5019C16.0297 12.6819 16.0297 11.3219 15.1997 10.4919Z" ]
            []
        ]


arrowDown : Args -> Html msg
arrowDown args =
    svg
        [ Attr.height <| String.fromInt args.height
        , Attr.width <| String.fromInt args.width
        , Attr.version "1.1"
        , Attr.viewBox "0 0 24 24"
        , Attr.fill args.color
        ]
        [ path
            [ Attr.d "M17.9188 8.17969H11.6888H6.07877C5.11877 8.17969 4.63877 9.33969 5.31877 10.0197L10.4988 15.1997C11.3288 16.0297 12.6788 16.0297 13.5088 15.1997L15.4788 13.2297L18.6888 10.0197C19.3588 9.33969 18.8788 8.17969 17.9188 8.17969Z"
            ]
            []
        ]


user : Args -> Html msg
user args =
    svg
        [ Attr.height <| String.fromInt args.height
        , Attr.width <| String.fromInt args.width
        , Attr.version "1.1"
        , Attr.viewBox "0 0 24 24"
        , Attr.fill args.color
        ]
        [ path
            [ Attr.d "M12 12.25C11.2583 12.25 10.5333 12.0301 9.91661 11.618C9.29993 11.206 8.81928 10.6203 8.53545 9.93506C8.25163 9.24984 8.17736 8.49584 8.32206 7.76841C8.46675 7.04098 8.8239 6.3728 9.34835 5.84835C9.8728 5.3239 10.541 4.96675 11.2684 4.82206C11.9958 4.67736 12.7498 4.75162 13.4351 5.03545C14.1203 5.31928 14.706 5.79993 15.118 6.41661C15.5301 7.0333 15.75 7.75832 15.75 8.5C15.75 9.49456 15.3549 10.4484 14.6517 11.1517C13.9484 11.8549 12.9946 12.25 12 12.25ZM12 6.25C11.555 6.25 11.12 6.38196 10.75 6.62919C10.38 6.87643 10.0916 7.22783 9.92127 7.63896C9.75098 8.0501 9.70642 8.5025 9.79323 8.93895C9.88005 9.37541 10.0943 9.77632 10.409 10.091C10.7237 10.4057 11.1246 10.62 11.561 10.7068C11.9975 10.7936 12.4499 10.749 12.861 10.5787C13.2722 10.4084 13.6236 10.12 13.8708 9.75003C14.118 9.38002 14.25 8.94501 14.25 8.5C14.25 7.90326 14.0129 7.33097 13.591 6.90901C13.169 6.48705 12.5967 6.25 12 6.25Z" ]
            []
        , path
            [ Attr.d "M19 19.25C18.8019 19.2474 18.6126 19.1676 18.4725 19.0275C18.3324 18.8874 18.2526 18.6981 18.25 18.5C18.25 16.55 17.19 15.25 12 15.25C6.81 15.25 5.75 16.55 5.75 18.5C5.75 18.6989 5.67098 18.8897 5.53033 19.0303C5.38968 19.171 5.19891 19.25 5 19.25C4.80109 19.25 4.61032 19.171 4.46967 19.0303C4.32902 18.8897 4.25 18.6989 4.25 18.5C4.25 13.75 9.68 13.75 12 13.75C14.32 13.75 19.75 13.75 19.75 18.5C19.7474 18.6981 19.6676 18.8874 19.5275 19.0275C19.3874 19.1676 19.1981 19.2474 19 19.25Z" ]
            []
        ]


calendar : Args -> Html msg
calendar args =
    svg
        [ Attr.height <| String.fromInt args.height
        , Attr.width <| String.fromInt args.width
        , Attr.version "1.1"
        , Attr.viewBox "0 0 20 20"
        , Attr.fill args.color
        ]
        [ path
            [ Attr.d "M5.75 2a.75.75 0 01.75.75V4h7V2.75a.75.75 0 011.5 0V4h.25A2.75 2.75 0 0118 6.75v8.5A2.75 2.75 0 0115.25 18H4.75A2.75 2.75 0 012 15.25v-8.5A2.75 2.75 0 014.75 4H5V2.75A.75.75 0 015.75 2zm-1 5.5c-.69 0-1.25.56-1.25 1.25v6.5c0 .69.56 1.25 1.25 1.25h10.5c.69 0 1.25-.56 1.25-1.25v-6.5c0-.69-.56-1.25-1.25-1.25H4.75z" ]
            []
        ]


chainlink : Args -> Html msg
chainlink args =
    svg
        [ Attr.height <| String.fromInt args.height
        , Attr.width <| String.fromInt args.width
        , Attr.version "1.1"
        , Attr.viewBox "0 0 20 20"
        , Attr.fill args.color
        ]
        [ path
            [ Attr.d "M12.232 4.232a2.5 2.5 0 013.536 3.536l-1.225 1.224a.75.75 0 001.061 1.06l1.224-1.224a4 4 0 00-5.656-5.656l-3 3a4 4 0 00.225 5.865.75.75 0 00.977-1.138 2.5 2.5 0 01-.142-3.667l3-3z" ]
            []
        , path
            [ Attr.d "M11.603 7.963a.75.75 0 00-.977 1.138 2.5 2.5 0 01.142 3.667l-3 3a2.5 2.5 0 01-3.536-3.536l1.225-1.224a.75.75 0 00-1.061-1.06l-1.224 1.224a4 4 0 105.656 5.656l3-3a4 4 0 00-.225-5.865z" ]
            []
        ]


resetCircle : Args -> Html msg
resetCircle args =
    svg
        [ Attr.height <| String.fromInt args.height
        , Attr.width <| String.fromInt args.width
        , Attr.version "1.1"
        , Attr.viewBox "0 0 21 21"
        , Attr.fill args.color
        ]
        [ g
            [ Attr.fill "none"
            , Attr.fillRule "evenodd"
            , Attr.stroke args.color
            , Attr.strokeLinecap "round"
            , Attr.strokeLinejoin "round"
            , Attr.transform "translate(2 2)"
            ]
            [ path
                [ Attr.d "m4.5 1.5c-2.4138473 1.37729434-4 4.02194088-4 7 0 4.418278 3.581722 8 8 8s8-3.581722 8-8-3.581722-8-8-8" ]
                []
            , path
                [ Attr.d "m4.5 5.5v-4h-4" ]
                []
            ]
        ]


selectArrows : Args -> Html msg
selectArrows args =
    svg
        [ Attr.height <| String.fromInt args.height
        , Attr.width <| String.fromInt args.width
        , Attr.version "1.1"
        , Attr.viewBox "0 0 20 20"
        , Attr.fill args.color
        ]
        [ path
            [ Attr.d "M10 3a.75.75 0 01.55.24l3.25 3.5a.75.75 0 11-1.1 1.02L10 4.852 7.3 7.76a.75.75 0 01-1.1-1.02l3.25-3.5A.75.75 0 0110 3zm-3.76 9.2a.75.75 0 011.06.04l2.7 2.908 2.7-2.908a.75.75 0 111.1 1.02l-3.25 3.5a.75.75 0 01-1.1 0l-3.25-3.5a.75.75 0 01.04-1.06z"
            , Attr.fillRule "evenodd"
            , Attr.clipRule "evenodd"
            ]
            []
        ]


checkmark : Args -> Html msg
checkmark args =
    svg
        [ Attr.height <| String.fromInt args.height
        , Attr.width <| String.fromInt args.width
        , Attr.version "1.1"
        , Attr.viewBox "0 0 20 20"
        , Attr.fill args.color
        ]
        [ path
            [ Attr.d "M16.704 4.153a.75.75 0 01.143 1.052l-8 10.5a.75.75 0 01-1.127.075l-4.5-4.5a.75.75 0 011.06-1.06l3.894 3.893 7.48-9.817a.75.75 0 011.05-.143z"
            , Attr.fillRule "evenodd"
            , Attr.clipRule "evenodd"
            ]
            []
        ]


eyeOpen : Args -> Html msg
eyeOpen args =
    svg
        [ Attr.height <| String.fromInt args.height
        , Attr.width <| String.fromInt args.width
        , Attr.version "1.1"
        , Attr.viewBox "0 0 512 512"
        , Attr.fill args.color
        ]
        [ path
            [ Attr.d "M256 192a64 64 0 1 0 0 128 64 64 0 0 0 0-128zm250 49l-89-89c-89-89-233-89-322 0L6 241c-8 8-8 22 0 30l89 89a227 227 0 0 0 322 0l89-89c8-8 8-22 0-30zM256 363a107 107 0 1 1 0-214 107 107 0 0 1 0 214z" ]
            []
        ]


eyeClose : Args -> Html msg
eyeClose args =
    svg
        [ Attr.height <| String.fromInt args.height
        , Attr.width <| String.fromInt args.width
        , Attr.version "1.1"
        , Attr.viewBox "0 0 512 512"
        , Attr.fill args.color
        ]
        [ path
            [ Attr.d "M506 241l-89-89-14-13-258 258a227 227 0 0 0 272-37l89-89c8-8 8-22 0-30zM256 363a21 21 0 0 1 0-43c35 0 64-29 64-64a21 21 0 0 1 43 0c0 59-48 107-107 107zM95 152L6 241c-8 8-8 22 0 30l89 89 14 13 258-258c-86-49-198-37-272 37zm161 40c-35 0-64 29-64 64a21 21 0 0 1-43 0c0-59 48-107 107-107a21 21 0 0 1 0 43z" ]
            []
        ]


waitingRoom : Args -> Html msg
waitingRoom args =
    svg
        [ Attr.height <| String.fromInt args.height
        , Attr.width <| String.fromInt args.width
        , Attr.version "1.1"
        , Attr.viewBox "0 0 512 512"
        , Attr.fill args.color
        ]
        [ g []
            [ path [ Attr.d "M504.396,399.501h-24.931v-42.033c0-3.014-0.214-5.978-0.588-8.893c0.378-0.903,0.588-1.894,0.588-2.935v-49.637    c0-38.331-31.184-69.515-69.514-69.515c-38.33,0-69.515,31.184-69.515,69.515v49.637c0,1.04,0.21,2.032,0.588,2.935    c-0.374,2.914-0.588,5.877-0.588,8.893v42.033h-12.898v-42.033c0-3.014-0.214-5.978-0.588-8.893    c0.378-0.903,0.588-1.894,0.588-2.935v-49.637c0-38.331-31.184-69.515-69.514-69.515c-38.33,0-69.515,31.184-69.515,69.515v49.637    c0,1.04,0.21,2.032,0.588,2.934c-0.374,2.914-0.588,5.877-0.588,8.893V399.5h-12.898v-42.033c0-3.014-0.214-5.978-0.588-8.893    c0.378-0.903,0.588-1.894,0.588-2.934v-49.637c0-38.331-31.184-69.515-69.515-69.515s-69.514,31.184-69.514,69.515v49.637    c0,1.04,0.21,2.032,0.588,2.934c-0.374,2.915-0.588,5.878-0.588,8.893V399.5H7.604C3.405,399.5,0,402.905,0,407.104v37.17    c0,4.199,3.405,7.604,7.604,7.604h12.312v52.518c0,4.199,3.405,7.604,7.604,7.604h33.322c4.199,0,7.604-3.405,7.604-7.604v-52.518    H238.56v52.518c0,4.199,3.405,7.604,7.604,7.604h33.323c4.2,0,7.604-3.405,7.604-7.604v-52.518h160.506v52.518    c0,4.199,3.404,7.604,7.604,7.604h33.323c4.2,0,7.604-3.405,7.604-7.604v-52.518h8.27c4.2,0,7.604-3.405,7.604-7.604v-37.17    C512,402.906,508.596,399.501,504.396,399.501z M355.642,296.007c0-29.945,24.362-54.307,54.307-54.307    c29.944,0,54.307,24.362,54.307,54.307v18.142c-12.748-15.949-32.348-26.195-54.307-26.195c-21.959,0-41.559,10.246-54.307,26.195    V296.007z M355.642,357.469c0-29.945,24.362-54.307,54.307-54.307c29.944,0,54.307,24.362,54.307,54.307v42.033H355.642V357.469z     M203.714,296.007c0-29.945,24.362-54.307,54.307-54.307c29.944,0,54.306,24.362,54.306,54.307v18.142    c-12.748-15.949-32.348-26.195-54.306-26.195c-21.959,0-41.558,10.246-54.307,26.195V296.007z M203.714,357.469    c0-29.945,24.362-54.307,54.307-54.307c29.944,0,54.306,24.362,54.306,54.307v42.033H203.714V357.469z M51.785,296.007    c0-29.945,24.362-54.307,54.307-54.307c29.945,0,54.306,24.362,54.306,54.307v18.143c-12.748-15.949-32.348-26.195-54.307-26.195    c-21.958,0-41.558,10.245-54.307,26.195V296.007z M51.785,357.469c0-29.945,24.362-54.307,54.307-54.307    c29.945,0,54.306,24.362,54.306,54.307v42.033H51.785V357.469z M53.238,496.793H35.124v-44.914h18.114V496.793z M271.882,496.793    h-18.115v-44.914h18.115V496.793z M480.918,496.793h-18.115v-44.914h18.115V496.793z M496.792,436.671H15.208v-21.962h28.973    h123.822h28.106h123.822h28.106H471.86h24.932V436.671z" ]
                []
            ]
        , g []
            [ path [ Attr.d "M256.003,0.001c-39.443,0-71.533,32.09-71.533,71.533c0,39.443,32.091,71.533,71.533,71.533    c39.443,0,71.533-32.09,71.533-71.533C327.536,32.09,295.447,0.001,256.003,0.001z M256.003,127.859    c-31.058,0-56.325-25.267-56.325-56.325s25.268-56.325,56.325-56.325c31.058,0,56.325,25.267,56.325,56.325    S287.061,127.859,256.003,127.859z" ]
                []
            ]
        , g []
            [ path [ Attr.d "M263.607,61.64V30.113c0-4.199-3.404-7.604-7.604-7.604c-4.199,0-7.604,3.405-7.604,7.604v31.523    c-2.505,1.924-4.289,4.79-4.761,8.167c-0.15,1.074-0.144,2.13-0.026,3.159L230.352,85.83c-3.014,2.925-3.086,7.739-0.161,10.752    c1.491,1.537,3.473,2.309,5.458,2.309c1.908,0,3.818-0.714,5.295-2.147l13.251-12.86c0.026,0.004,0.051,0.011,0.077,0.015    c6.829,0.956,13.14-3.805,14.096-10.634C269.013,68.655,267.048,64.289,263.607,61.64z" ]
                []
            ]
        ]
