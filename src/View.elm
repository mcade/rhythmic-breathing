module View exposing (..)

import Html exposing (Html, div, text)
import Html.Attributes exposing (class)
import Svg exposing (circle, svg)
import Svg.Attributes exposing (cx, cy, r, fill)
import Msgs exposing (Msg(..))
import Models exposing (Model)


view : Model -> Html Msg
view model =
    div [ class "heartbeat" ]
        [ svg []
            [ circle [ cx "60", cy "60", r "50", fill "blue" ] []
            ]
        , div [] [ model.timer |> toString |> text ]
        ]
