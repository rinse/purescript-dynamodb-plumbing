module Network.AWS.DynamoDB.DocumentClient
    ( DocumentClient
    , documentClient
    , batchGet
    , batchWrite
    , createSet
    , delete
    , get
    , put
    , query
    , scan
    , transactGet
    , transactWrite
    , update
    ) where

import Control.Promise               (Promise)
import Effect                        (Effect)
import Effect.Aff                    (Aff)
import Effect.Uncurried              (EffectFn1, EffectFn2, runEffectFn1)
import Foreign                       (Foreign)
import Foreign.Generic.Class         (class Decode)
import Network.AWS.DynamoDB.Internal (toDecodedAffEffectFn2)

foreign import data DocumentClient :: Type
foreign import documentClientImpl :: forall r. EffectFn1 { | r } DocumentClient
foreign import batchGetImpl       :: forall r. EffectFn2 DocumentClient { | r } (Promise Foreign)
foreign import batchWriteImpl     :: forall r. EffectFn2 DocumentClient { | r } (Promise Foreign)
foreign import createSetImpl      :: forall r. EffectFn2 DocumentClient { | r } (Promise Foreign)
foreign import deleteImpl         :: forall r. EffectFn2 DocumentClient { | r } (Promise Foreign)
foreign import getImpl            :: forall r. EffectFn2 DocumentClient { | r } (Promise Foreign)
foreign import putImpl            :: forall r. EffectFn2 DocumentClient { | r } (Promise Foreign)
foreign import queryImpl          :: forall r. EffectFn2 DocumentClient { | r } (Promise Foreign)
foreign import scanImpl           :: forall r. EffectFn2 DocumentClient { | r } (Promise Foreign)
foreign import transactGetImpl    :: forall r. EffectFn2 DocumentClient { | r } (Promise Foreign)
foreign import transactWriteImpl  :: forall r. EffectFn2 DocumentClient { | r } (Promise Foreign)
foreign import updateImpl         :: forall r. EffectFn2 DocumentClient { | r } (Promise Foreign)

documentClient :: forall r. { | r } -> Effect DocumentClient
documentClient = runEffectFn1 documentClientImpl

batchGet :: forall r a. Decode a => DocumentClient -> { | r } -> Aff a
batchGet = toDecodedAffEffectFn2 batchGetImpl

batchWrite :: forall r a. Decode a => DocumentClient -> { | r } -> Aff a
batchWrite = toDecodedAffEffectFn2 batchWriteImpl

createSet :: forall r a. Decode a => DocumentClient -> { | r } -> Aff a
createSet = toDecodedAffEffectFn2 createSetImpl

delete :: forall r a. Decode a => DocumentClient -> { | r } -> Aff a
delete = toDecodedAffEffectFn2 deleteImpl

get :: forall r a. Decode a => DocumentClient -> { | r } -> Aff a
get = toDecodedAffEffectFn2 getImpl

put :: forall r a. Decode a => DocumentClient -> { | r } -> Aff a
put = toDecodedAffEffectFn2 putImpl

query :: forall r a. Decode a => DocumentClient -> { | r } -> Aff a
query = toDecodedAffEffectFn2 queryImpl

scan :: forall r a. Decode a => DocumentClient -> { | r } -> Aff a
scan = toDecodedAffEffectFn2 scanImpl

transactGet :: forall r a. Decode a => DocumentClient -> { | r } -> Aff a
transactGet = toDecodedAffEffectFn2 transactGetImpl

transactWrite :: forall r a. Decode a => DocumentClient -> { | r } -> Aff a
transactWrite = toDecodedAffEffectFn2 transactWriteImpl

update :: forall r a. Decode a => DocumentClient -> { | r } -> Aff a
update = toDecodedAffEffectFn2 updateImpl
