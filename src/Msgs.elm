module Msgs exposing (..)

import Time exposing (Time)
import Models exposing (Depth)


type Msg
    = Tick Time
    | StartBreathing
    | ChangeDepth Depth
    | NoOp
