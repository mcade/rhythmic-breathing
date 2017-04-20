module Models exposing (..)

import Time exposing (Time)


type Depth
    = Deep
    | Deeper
    | Deepest


type alias Model =
    { depth : Depth
    , isBreathing : Bool
    , timer : Int
    }
