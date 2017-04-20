module Main exposing (..)

import Html exposing (program)
import Msgs exposing (Msg(..))
import Models exposing (Model)
import Update exposing (update)
import View exposing (view)
import Time exposing (second)


init : ( Model, Cmd Msg )
init =
    { interval = 5
    , isBreathing = False
    , timer = 0
    }
        ! []


subscriptions : Model -> Sub Msg
subscriptions model =
    Time.every second Tick



-- MAIN


main : Program Never Model Msg
main =
    program
        { init = init
        , view = view
        , update = update
        , subscriptions = subscriptions
        }
