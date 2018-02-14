module Main exposing (..)

import Html exposing (..)
import Html.Attributes exposing (class)
import Html.Events exposing (onClick)
import Models exposing (..)
import Update exposing (update)


-- # Main


main : Program Never Model Msg
main =
    Html.beginnerProgram
        { model = model
        , view = view
        , update = update
        }



-- # View


view : Model -> Html Msg
view model =
    div [ class "container" ]
        [ h1 [] [ text "Counterlicious" ]
        , div [] [ text "Count: ", text (toString model) ]
        , button [ onClick Dec ] [ text "Decrement" ]
        , button [ onClick Inc ] [ text "Increment" ]
        ]
