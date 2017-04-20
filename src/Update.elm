module Update exposing (..)

import Msgs exposing (Msg(..))
import Models exposing (Model)


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    case msg of
        Tick newTime ->
            let
                newModel =
                    if model.isBreathing then
                        { model | timer = model.timer + 1 }
                    else
                        model
            in
                newModel ! []

        ChangeDepth depth ->
            { model | depth = depth } ! []

        StartBreathing ->
            { model | isBreathing = True } ! []

        NoOp ->
            ( model, Cmd.none )
