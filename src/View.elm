module View exposing (..)

import Html exposing (Html, div, a, h1, small, text)
import Html.Attributes exposing (class, target, href)
import Svg exposing (circle, svg)
import Svg.Attributes as SvgAttr exposing (r, fill, stroke, strokeWidth, viewBox)
import Msgs exposing (Msg(..))
import Models exposing (Model)


timeInMinutes : Int -> String
timeInMinutes elapsedTime =
    let
        min =
            let
                min =
                    elapsedTime // 60
            in
                if min < 0 then
                    0
                else
                    min

        sec =
            let
                sec =
                    elapsedTime - (min * 60)
            in
                if sec < 0 then
                    0
                else
                    sec

        secString =
            if sec < 10 then
                "0" ++ (toString sec)
            else
                toString sec
    in
        (toString min) ++ ":" ++ secString


view : Model -> Html Msg
view model =
    div [ class "container" ]
        [ h1 [] [ text "Rhythmic Breathing" ]
        , small []
            [ a [ href "https://www.trainingjournal.com/articles/feature/control-your-physiology-and-improve-your-performance", target "_blank" ]
                [ text "Control your physiology and improve your performance" ]
            ]
        , div [ class "breathe-indicator" ]
            [ svg [ viewBox "-50 -50 100 100" ]
                [ circle [ SvgAttr.class "heartbeat", r "48.5", fill "blue" ] []
                , circle [ r "24.25", stroke "blue", strokeWidth "0.5", fill "transparent" ] []
                , circle [ r "48.75", stroke "red", strokeWidth "0.5", fill "transparent" ] []
                ]
            ]
        , div [] [ timeInMinutes model.timer |> text ]
        ]
