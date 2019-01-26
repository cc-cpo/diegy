-- Do not manually edit this file, it was auto-generated by dillonkearns/elm-graphql
-- https://github.com/dillonkearns/elm-graphql


module YelpApi.Object.SpecialHours exposing (date, end, is_closed, is_overnight, start)

import Graphql.Internal.Builder.Argument as Argument exposing (Argument)
import Graphql.Internal.Builder.Object as Object
import Graphql.Internal.Encode as Encode exposing (Value)
import Graphql.Operation exposing (RootMutation, RootQuery, RootSubscription)
import Graphql.OptionalArgument exposing (OptionalArgument(..))
import Graphql.SelectionSet exposing (SelectionSet)
import Json.Decode as Decode
import YelpApi.InputObject
import YelpApi.Interface
import YelpApi.Object
import YelpApi.Scalar
import YelpApi.ScalarCodecs
import YelpApi.Union


{-| Whether the business opens overnight or not. When this is true, the end time will be lower than the start time.
-}
is_overnight : SelectionSet (Maybe Bool) YelpApi.Object.SpecialHours
is_overnight =
    Object.selectionForField "(Maybe Bool)" "is_overnight" [] (Decode.bool |> Decode.nullable)


{-| Whether the business is closed on the indicated date.
-}
is_closed : SelectionSet (Maybe Bool) YelpApi.Object.SpecialHours
is_closed =
    Object.selectionForField "(Maybe Bool)" "is_closed" [] (Decode.bool |> Decode.nullable)


{-| End of the opening hours in a day, in 24-hour clock notation, like 2130 means 9:30 PM.
-}
end : SelectionSet (Maybe String) YelpApi.Object.SpecialHours
end =
    Object.selectionForField "(Maybe String)" "end" [] (Decode.string |> Decode.nullable)


{-| Start of the opening hours in a day, in 24-hour clock notation, like 1000 means 10 AM.
-}
start : SelectionSet (Maybe String) YelpApi.Object.SpecialHours
start =
    Object.selectionForField "(Maybe String)" "start" [] (Decode.string |> Decode.nullable)


{-| The date for which the special hours apply inISO8601 format, AKA YYYY-MM-DD
-}
date : SelectionSet (Maybe YelpApi.ScalarCodecs.Date) YelpApi.Object.SpecialHours
date =
    Object.selectionForField "(Maybe ScalarCodecs.Date)" "date" [] (YelpApi.ScalarCodecs.codecs |> YelpApi.Scalar.unwrapCodecs |> .codecDate |> .decoder |> Decode.nullable)
