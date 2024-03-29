module Api.Endpoint exposing
    ( Endpoint
    , listAgents
    , listEnvironments
    , listSpaces
    , pubNubAuth
    , request
    )

import Http
import Url.Builder


type Endpoint
    = Endpoint String


{-| Http.request, except it takes an Endpoint instead of a Url.
-}
request :
    { body : Http.Body
    , expect : Http.Expect msg
    , headers : List Http.Header
    , method : String
    , timeout : Maybe Float
    , tracker : Maybe String
    , url : Endpoint
    }
    -> Cmd msg
request config =
    Http.request
        { body = config.body
        , expect = config.expect
        , headers = config.headers
        , method = config.method
        , timeout = config.timeout
        , tracker = config.tracker
        , url = unwrap config.url
        }



-- PRIVATE


unwrap : Endpoint -> String
unwrap (Endpoint str) =
    str


url : List String -> List Url.Builder.QueryParameter -> Endpoint
url paths queryParams =
    Url.Builder.crossOrigin "https://platform.flatfile.com/api/v1" paths queryParams
        |> Endpoint



-- ENDPOINTS


listEnvironments : Endpoint
listEnvironments =
    url [ "environments" ]
        []


listSpaces : String -> Endpoint
listSpaces environmentId =
    url [ "spaces" ]
        [ Url.Builder.string "environmentId" environmentId
        , Url.Builder.string "sortDirection" "desc"
        , Url.Builder.string "sortField" "createdAt"
        , Url.Builder.int "pageNumber" 1
        , Url.Builder.int "pageSize" 10
        ]


pubNubAuth : String -> Endpoint
pubNubAuth spaceId =
    url [ "subscription" ]
        [ Url.Builder.string "spaceId" spaceId ]


listAgents : String -> Endpoint
listAgents environmentId =
    url [ "agents" ]
        [ Url.Builder.string "environmentId" environmentId ]
