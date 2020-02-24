module Network.AWS.DynamoDB
    ( DynamoDB
    , dynamoDB
    , batchGetItem
    , batchWriteItem
    , createBackup
    , createGlobalTable
    , createTable
    , deleteBackup
    , deleteItem
    , deleteTable
    , describeBackup
    , describeContinuousBackups
    , describeContributorInsights
    , describeEndpoints
    , describeGlobalTable
    , describeGlobalTableSettings
    , describeLimits
    , describeTable
    , describeTableReplicaAutoScaling
    , describeTimeToLive
    , getItem
    , listBackups
    , listContributorInsights
    , listGlobalTables
    , listTables
    , listTagsOfResource
    , putItem
    , query
    , restoreTableFromBackup
    , restoreTableToPointInTime
    , scan
    , tagResource
    , transactGetItems
    , transactWriteItems
    , untagResource
    , updateContinuousBackups
    , updateContributorInsights
    , updateGlobalTable
    , updateGlobalTableSettings
    , updateItem
    , updateTable
    , updateTableReplicaAutoScaling
    , updateTimeToLive
    , waitFor
    ) where

import Control.Promise               (Promise)
import Effect                        (Effect)
import Effect.Aff                    (Aff)
import Effect.Uncurried              (EffectFn1, EffectFn2, EffectFn3, runEffectFn1)
import Foreign                       (Foreign)
import Foreign.Generic.Class         (class Decode)
import Network.AWS.DynamoDB.Internal (toDecodedAffEffectFn2, toDecodedAffEffectFn3)

foreign import data DynamoDB :: Type
foreign import dynamoDBImpl :: forall r. EffectFn1 { | r } DynamoDB
foreign import batchGetItemImpl :: forall r. EffectFn2 DynamoDB { | r } (Promise Foreign)
foreign import batchWriteItemImpl :: forall r. EffectFn2 DynamoDB { | r } (Promise Foreign)
foreign import createBackupImpl :: forall r. EffectFn2 DynamoDB { | r } (Promise Foreign)
foreign import createGlobalTableImpl :: forall r. EffectFn2 DynamoDB { | r } (Promise Foreign)
foreign import createTableImpl :: forall r. EffectFn2 DynamoDB { | r } (Promise Foreign)
foreign import deleteBackupImpl :: forall r. EffectFn2 DynamoDB { | r } (Promise Foreign)
foreign import deleteItemImpl :: forall r. EffectFn2 DynamoDB { | r } (Promise Foreign)
foreign import deleteTableImpl :: forall r. EffectFn2 DynamoDB { | r } (Promise Foreign)
foreign import describeBackupImpl :: forall r. EffectFn2 DynamoDB { | r } (Promise Foreign)
foreign import describeContinuousBackupsImpl :: forall r. EffectFn2 DynamoDB { | r } (Promise Foreign)
foreign import describeContributorInsightsImpl :: forall r. EffectFn2 DynamoDB { | r } (Promise Foreign)
foreign import describeEndpointsImpl :: forall r. EffectFn2 DynamoDB { | r } (Promise Foreign)
foreign import describeGlobalTableImpl :: forall r. EffectFn2 DynamoDB { | r } (Promise Foreign)
foreign import describeGlobalTableSettingsImpl :: forall r. EffectFn2 DynamoDB { | r } (Promise Foreign)
foreign import describeLimitsImpl :: forall r. EffectFn2 DynamoDB { | r } (Promise Foreign)
foreign import describeTableImpl :: forall r. EffectFn2 DynamoDB { | r } (Promise Foreign)
foreign import describeTableReplicaAutoScalingImpl :: forall r. EffectFn2 DynamoDB { | r } (Promise Foreign)
foreign import describeTimeToLiveImpl :: forall r. EffectFn2 DynamoDB { | r } (Promise Foreign)
foreign import getItemImpl :: forall r. EffectFn2 DynamoDB { | r } (Promise Foreign)
foreign import listBackupsImpl :: forall r. EffectFn2 DynamoDB { | r } (Promise Foreign)
foreign import listContributorInsightsImpl :: forall r. EffectFn2 DynamoDB { | r } (Promise Foreign)
foreign import listGlobalTablesImpl :: forall r. EffectFn2 DynamoDB { | r } (Promise Foreign)
foreign import listTablesImpl :: forall r. EffectFn2 DynamoDB { | r } (Promise Foreign)
foreign import listTagsOfResourceImpl :: forall r. EffectFn2 DynamoDB { | r } (Promise Foreign)
foreign import putItemImpl :: forall r. EffectFn2 DynamoDB { | r } (Promise Foreign)
foreign import queryImpl :: forall r. EffectFn2 DynamoDB { | r } (Promise Foreign)
foreign import restoreTableFromBackupImpl :: forall r. EffectFn2 DynamoDB { | r } (Promise Foreign)
foreign import restoreTableToPointInTimeImpl :: forall r. EffectFn2 DynamoDB { | r } (Promise Foreign)
foreign import scanImpl :: forall r. EffectFn2 DynamoDB { | r } (Promise Foreign)
foreign import tagResourceImpl :: forall r. EffectFn2 DynamoDB { | r } (Promise Foreign)
foreign import transactGetItemsImpl :: forall r. EffectFn2 DynamoDB { | r } (Promise Foreign)
foreign import transactWriteItemsImpl :: forall r. EffectFn2 DynamoDB { | r } (Promise Foreign)
foreign import untagResourceImpl :: forall r. EffectFn2 DynamoDB { | r } (Promise Foreign)
foreign import updateContinuousBackupsImpl :: forall r. EffectFn2 DynamoDB { | r } (Promise Foreign)
foreign import updateContributorInsightsImpl :: forall r. EffectFn2 DynamoDB { | r } (Promise Foreign)
foreign import updateGlobalTableImpl :: forall r. EffectFn2 DynamoDB { | r } (Promise Foreign)
foreign import updateGlobalTableSettingsImpl :: forall r. EffectFn2 DynamoDB { | r } (Promise Foreign)
foreign import updateItemImpl :: forall r. EffectFn2 DynamoDB { | r } (Promise Foreign)
foreign import updateTableImpl :: forall r. EffectFn2 DynamoDB { | r } (Promise Foreign)
foreign import updateTableReplicaAutoScalingImpl :: forall r. EffectFn2 DynamoDB { | r } (Promise Foreign)
foreign import updateTimeToLiveImpl :: forall r. EffectFn2 DynamoDB { | r } (Promise Foreign)
foreign import waitForImpl :: forall r. EffectFn3 DynamoDB String { | r } (Promise Foreign)

dynamoDB :: forall r. { | r } -> Effect DynamoDB
dynamoDB = runEffectFn1 dynamoDBImpl

batchGetItem :: forall r a. Decode a => DynamoDB -> { | r } -> Aff a
batchGetItem = toDecodedAffEffectFn2 batchGetItemImpl

batchWriteItem :: forall r a. Decode a => DynamoDB -> { | r } -> Aff a
batchWriteItem = toDecodedAffEffectFn2 batchWriteItemImpl

createBackup :: forall r a. Decode a => DynamoDB -> { | r } -> Aff a
createBackup = toDecodedAffEffectFn2 createBackupImpl

createGlobalTable :: forall r a. Decode a => DynamoDB -> { | r } -> Aff a
createGlobalTable = toDecodedAffEffectFn2 createGlobalTableImpl

createTable :: forall r a. Decode a => DynamoDB -> { | r } -> Aff a
createTable = toDecodedAffEffectFn2 createTableImpl

deleteBackup :: forall r a. Decode a => DynamoDB -> { | r } -> Aff a
deleteBackup = toDecodedAffEffectFn2 deleteBackupImpl

deleteItem :: forall r a. Decode a => DynamoDB -> { | r } -> Aff a
deleteItem = toDecodedAffEffectFn2 deleteItemImpl

deleteTable :: forall r a. Decode a => DynamoDB -> { | r } -> Aff a
deleteTable = toDecodedAffEffectFn2 deleteTableImpl

describeBackup :: forall r a. Decode a => DynamoDB -> { | r } -> Aff a
describeBackup = toDecodedAffEffectFn2 describeBackupImpl

describeContinuousBackups :: forall r a. Decode a => DynamoDB -> { | r } -> Aff a
describeContinuousBackups = toDecodedAffEffectFn2 describeContinuousBackupsImpl

describeContributorInsights :: forall r a. Decode a => DynamoDB -> { | r } -> Aff a
describeContributorInsights = toDecodedAffEffectFn2 describeContributorInsightsImpl

describeEndpoints :: forall r a. Decode a => DynamoDB -> { | r } -> Aff a
describeEndpoints = toDecodedAffEffectFn2 describeEndpointsImpl

describeGlobalTable :: forall r a. Decode a => DynamoDB -> { | r } -> Aff a
describeGlobalTable = toDecodedAffEffectFn2 describeGlobalTableImpl

describeGlobalTableSettings :: forall r a. Decode a => DynamoDB -> { | r } -> Aff a
describeGlobalTableSettings = toDecodedAffEffectFn2 describeGlobalTableSettingsImpl

describeLimits :: forall r a. Decode a => DynamoDB -> { | r } -> Aff a
describeLimits = toDecodedAffEffectFn2 describeLimitsImpl

describeTable :: forall r a. Decode a => DynamoDB -> { | r } -> Aff a
describeTable = toDecodedAffEffectFn2 describeTableImpl

describeTableReplicaAutoScaling :: forall r a. Decode a => DynamoDB -> { | r } -> Aff a
describeTableReplicaAutoScaling = toDecodedAffEffectFn2 describeTableReplicaAutoScalingImpl

describeTimeToLive :: forall r a. Decode a => DynamoDB -> { | r } -> Aff a
describeTimeToLive = toDecodedAffEffectFn2 describeTimeToLiveImpl

getItem :: forall r a. Decode a => DynamoDB -> { | r } -> Aff a
getItem = toDecodedAffEffectFn2 getItemImpl

listBackups :: forall r a. Decode a => DynamoDB -> { | r } -> Aff a
listBackups = toDecodedAffEffectFn2 listBackupsImpl

listContributorInsights :: forall r a. Decode a => DynamoDB -> { | r } -> Aff a
listContributorInsights = toDecodedAffEffectFn2 listContributorInsightsImpl

listGlobalTables :: forall r a. Decode a => DynamoDB -> { | r } -> Aff a
listGlobalTables = toDecodedAffEffectFn2 listGlobalTablesImpl

listTables :: forall r a. Decode a => DynamoDB -> { | r } -> Aff a
listTables = toDecodedAffEffectFn2 listTablesImpl

listTagsOfResource :: forall r a. Decode a => DynamoDB -> { | r } -> Aff a
listTagsOfResource = toDecodedAffEffectFn2 listTagsOfResourceImpl

putItem :: forall r a. Decode a => DynamoDB -> { | r } -> Aff a
putItem = toDecodedAffEffectFn2 putItemImpl

query :: forall r a. Decode a => DynamoDB -> { | r } -> Aff a
query = toDecodedAffEffectFn2 queryImpl

restoreTableFromBackup :: forall r a. Decode a => DynamoDB -> { | r } -> Aff a
restoreTableFromBackup = toDecodedAffEffectFn2 restoreTableFromBackupImpl

restoreTableToPointInTime :: forall r a. Decode a => DynamoDB -> { | r } -> Aff a
restoreTableToPointInTime = toDecodedAffEffectFn2 restoreTableToPointInTimeImpl

scan :: forall r a. Decode a => DynamoDB -> { | r } -> Aff a
scan = toDecodedAffEffectFn2 scanImpl

tagResource :: forall r a. Decode a => DynamoDB -> { | r } -> Aff a
tagResource = toDecodedAffEffectFn2 tagResourceImpl

transactGetItems :: forall r a. Decode a => DynamoDB -> { | r } -> Aff a
transactGetItems = toDecodedAffEffectFn2 transactGetItemsImpl

transactWriteItems :: forall r a. Decode a => DynamoDB -> { | r } -> Aff a
transactWriteItems = toDecodedAffEffectFn2 transactWriteItemsImpl

untagResource :: forall r a. Decode a => DynamoDB -> { | r } -> Aff a
untagResource = toDecodedAffEffectFn2 untagResourceImpl

updateContinuousBackups :: forall r a. Decode a => DynamoDB -> { | r } -> Aff a
updateContinuousBackups = toDecodedAffEffectFn2 updateContinuousBackupsImpl

updateContributorInsights :: forall r a. Decode a => DynamoDB -> { | r } -> Aff a
updateContributorInsights = toDecodedAffEffectFn2 updateContributorInsightsImpl

updateGlobalTable :: forall r a. Decode a => DynamoDB -> { | r } -> Aff a
updateGlobalTable = toDecodedAffEffectFn2 updateGlobalTableImpl

updateGlobalTableSettings :: forall r a. Decode a => DynamoDB -> { | r } -> Aff a
updateGlobalTableSettings = toDecodedAffEffectFn2 updateGlobalTableSettingsImpl

updateItem :: forall r a. Decode a => DynamoDB -> { | r } -> Aff a
updateItem = toDecodedAffEffectFn2 updateItemImpl

updateTable :: forall r a. Decode a => DynamoDB -> { | r } -> Aff a
updateTable = toDecodedAffEffectFn2 updateTableImpl

updateTableReplicaAutoScaling :: forall r a. Decode a => DynamoDB -> { | r } -> Aff a
updateTableReplicaAutoScaling = toDecodedAffEffectFn2 updateTableReplicaAutoScalingImpl

updateTimeToLive :: forall r a. Decode a => DynamoDB -> { | r } -> Aff a
updateTimeToLive = toDecodedAffEffectFn2 updateTimeToLiveImpl

waitFor :: forall r a. Decode a => DynamoDB -> String -> { | r } -> Aff a
waitFor = toDecodedAffEffectFn3 waitForImpl
