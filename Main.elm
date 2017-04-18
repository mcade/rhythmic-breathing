module Main exposing (..)

import Html exposing (text, div)
import Html.Attributes exposing (class)
import Svg exposing (circle, svg)
import Svg.Attributes exposing (cx, cy, r, fill)


main =
    div [ class "heartbeat" ]
        [ svg []
            [ circle [ cx "60", cy "60", r "50", fill "blue" ] []
            ]
        ]
