module Network.AWS.DynamoDB.Internal
    ( toDecodedAffEffectFn2
    , toDecodedAffEffectFn3
    ) where

import Prelude

import Control.Monad.Error.Class  (class MonadThrow)
import Control.Monad.Except       (runExcept)
import Control.Promise            (Promise, toAffE)
import Data.Profunctor.Choice     (left, (|||))
import Data.Foldable              (fold)
import Data.List.Types            (toList)
import Effect.Aff                 (Aff, Error, error, throwError)
import Effect.Uncurried           (EffectFn2, EffectFn3, runEffectFn2, runEffectFn3)
import Foreign                    (Foreign, MultipleErrors, renderForeignError)
import Foreign.Generic.Class      (class Decode, decode)


toDecodedAffEffectFn2 :: forall a b c. Decode c => EffectFn2 a b (Promise Foreign) -> a -> b -> Aff c
toDecodedAffEffectFn2 f a = toAffEffectFn2 f a >=> decode'

toDecodedAffEffectFn3 :: forall a b c d. Decode d => EffectFn3 a b c (Promise Foreign) -> a -> b -> c -> Aff d
toDecodedAffEffectFn3 f a b = toAffEffectFn3 f a b >=> decode'

decode' :: forall m a. MonadThrow Error m => Decode a => Foreign -> m a
decode' = (throwError ||| pure)
    <<< left (error <<< renderMultipleErrors)
    <<< runExcept
    <<< decode

renderMultipleErrors :: MultipleErrors -> String
renderMultipleErrors = fold <<< map renderForeignError <<< toList

toAffEffectFn2 :: forall a b c. EffectFn2 a b (Promise c) -> a -> b -> Aff c
toAffEffectFn2 = (map <<< map) toAffE <<< runEffectFn2

toAffEffectFn3 :: forall a b c d. EffectFn3 a b c (Promise d) -> a -> b -> c -> Aff d
toAffEffectFn3 = (map <<< map <<< map) toAffE <<< runEffectFn3
