-- Do not manually edit this file, it was auto-generated by dillonkearns/elm-graphql
-- https://github.com/dillonkearns/elm-graphql


module YelpApi.Object.Reviews exposing (business, possible_languages, review, total)

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


{-| The reviews objects.
-}
review : SelectionSet decodesTo YelpApi.Object.Review -> SelectionSet (Maybe (List (Maybe decodesTo))) YelpApi.Object.Reviews
review object_ =
    Object.selectionForCompositeField "review" [] object_ (identity >> Decode.nullable >> Decode.list >> Decode.nullable)


{-| Total number of reviews.
-}
total : SelectionSet (Maybe Int) YelpApi.Object.Reviews
total =
    Object.selectionForField "(Maybe Int)" "total" [] (Decode.int |> Decode.nullable)


{-| A list of languages for which the business has at least one review.
-}
possible_languages : SelectionSet decodesTo YelpApi.Object.Language -> SelectionSet (Maybe (List (Maybe decodesTo))) YelpApi.Object.Reviews
possible_languages object_ =
    Object.selectionForCompositeField "possible_languages" [] object_ (identity >> Decode.nullable >> Decode.list >> Decode.nullable)


{-| The business associated with the reviews
-}
business : SelectionSet decodesTo YelpApi.Object.Business -> SelectionSet (Maybe decodesTo) YelpApi.Object.Reviews
business object_ =
    Object.selectionForCompositeField "business" [] object_ (identity >> Decode.nullable)
