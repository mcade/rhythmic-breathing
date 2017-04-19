module Models exposing (..)

import Time exposing (Time)


type alias Model =
    { interval : Int
    , isBreathing : Bool
    , timer : Int
    }
