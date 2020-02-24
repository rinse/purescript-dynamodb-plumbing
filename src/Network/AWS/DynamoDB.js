'use strict';

const AWS = require('../Network.AWS').aws();

exports.dynamoDBImpl = options => {
    return new AWS.DynamoDB(options);
};

exports.batchGetItemImpl = function (dynamoDB, params) {
    return dynamoDB.batchGetItem(params).promise();
};

exports.batchWriteItemImpl = function (dynamoDB, params) {
    return dynamoDB.batchWriteItem(params).promise();
};

exports.createBackupImpl = function (dynamoDB, params) {
    return dynamoDB.createBackup(params).promise();
};

exports.createGlobalTableImpl = function (dynamoDB, params) {
    return dynamoDB.createGlobalTable(params).promise();
};

exports.createTableImpl = function (dynamoDB, params) {
    return dynamoDB.createTable(params).promise();
};

exports.deleteBackupImpl = function (dynamoDB, params) {
    return dynamoDB.deleteBackup(params).promise();
};

exports.deleteItemImpl = function (dynamoDB, params) {
    return dynamoDB.deleteItem(params).promise();
};

exports.deleteTableImpl = function (dynamoDB, params) {
    return dynamoDB.deleteTable(params).promise();
};

exports.describeBackupImpl = function (dynamoDB, params) {
    return dynamoDB.describeBackup(params).promise();
};

exports.describeContinuousBackupsImpl = function (dynamoDB, params) {
    return dynamoDB.describeContinuousBackups(params).promise();
};

exports.describeContributorInsightsImpl = function (dynamoDB, params) {
    return dynamoDB.describeContributorInsights(params).promise();
};

exports.describeEndpointsImpl = function (dynamoDB, params) {
    return dynamoDB.describeEndpoints(params).promise();
};

exports.describeGlobalTableImpl = function (dynamoDB, params) {
    return dynamoDB.describeGlobalTable(params).promise();
};

exports.describeGlobalTableSettingsImpl = function (dynamoDB, params) {
    return dynamoDB.describeGlobalTableSettings(params).promise();
};

exports.describeLimitsImpl = function (dynamoDB, params) {
    return dynamoDB.describeLimits(params).promise();
};

exports.describeTableImpl = function (dynamoDB, params) {
    return dynamoDB.describeTable(params).promise();
};

exports.describeTableReplicaAutoScalingImpl = function (dynamoDB, params) {
    return dynamoDB.describeTableReplicaAutoScaling(params).promise();
};

exports.describeTimeToLiveImpl = function (dynamoDB, params) {
    return dynamoDB.describeTimeToLive(params).promise();
};

exports.getItemImpl = function (dynamoDB, params) {
    return dynamoDB.getItem(params).promise();
};

exports.listBackupsImpl = function (dynamoDB, params) {
    return dynamoDB.listBackups(params).promise();
};

exports.listContributorInsightsImpl = function (dynamoDB, params) {
    return dynamoDB.listContributorInsights(params).promise();
};

exports.listGlobalTablesImpl = function (dynamoDB, params) {
    return dynamoDB.listGlobalTables(params).promise();
};

exports.listTablesImpl = function (dynamoDB, params) {
    return dynamoDB.listTables(params).promise();
};

exports.listTagsOfResourceImpl = function (dynamoDB, params) {
    return dynamoDB.listTagsOfResource(params).promise();
};

exports.putItemImpl = function (dynamoDB, params) {
    return dynamoDB.putItem(params).promise();
};

exports.queryImpl = function (dynamoDB, params) {
    return dynamoDB.query(params).promise();
};

exports.restoreTableFromBackupImpl = function (dynamoDB, params) {
    return dynamoDB.restoreTableFromBackup(params).promise();
};

exports.restoreTableToPointInTimeImpl = function (dynamoDB, params) {
    return dynamoDB.restoreTableToPointInTime(params).promise();
};

exports.scanImpl = function (dynamoDB, params) {
    return dynamoDB.scan(params).promise();
};

exports.tagResourceImpl = function (dynamoDB, params) {
    return dynamoDB.tagResource(params).promise();
};

exports.transactGetItemsImpl = function (dynamoDB, params) {
    return dynamoDB.transactGetItems(params).promise();
};

exports.transactWriteItemsImpl = function (dynamoDB, params) {
    return dynamoDB.transactWriteItems(params).promise();
};

exports.untagResourceImpl = function (dynamoDB, params) {
    return dynamoDB.untagResource(params).promise();
};

exports.updateContinuousBackupsImpl = function (dynamoDB, params) {
    return dynamoDB.updateContinuousBackups(params).promise();
};

exports.updateContributorInsightsImpl = function (dynamoDB, params) {
    return dynamoDB.updateContributorInsights(params).promise();
};

exports.updateGlobalTableImpl = function (dynamoDB, params) {
    return dynamoDB.updateGlobalTable(params).promise();
};

exports.updateGlobalTableSettingsImpl = function (dynamoDB, params) {
    return dynamoDB.updateGlobalTableSettings(params).promise();
};

exports.updateItemImpl = function (dynamoDB, params) {
    return dynamoDB.updateItem(params).promise();
};

exports.updateTableImpl = function (dynamoDB, params) {
    return dynamoDB.updateTable(params).promise();
};

exports.updateTableReplicaAutoScalingImpl = function (dynamoDB, params) {
    return dynamoDB.updateTableReplicaAutoScaling(params).promise();
};

exports.updateTimeToLiveImpl = function (dynamoDB, params) {
    return dynamoDB.updateTimeToLive(params).promise();
};

exports.waitForImpl = function (dynamoDB, params) {
    return dynamoDB.waitFor(params).promise();
};
