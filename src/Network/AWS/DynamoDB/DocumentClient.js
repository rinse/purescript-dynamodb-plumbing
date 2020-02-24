'use strict';

const AWS = require('../Network.AWS').aws();

exports.documentClientImpl = options => {
    return new AWS.DynamoDB.DocumentClient(options);
};

exports.batchGetImpl = function (documentClient, params) {
    return documentClient.batchGet(params).promise();
};

exports.batchWriteImpl = function (documentClient, params) {
    return documentClient.batchWrite(params).promise();
};

exports.createSetImpl = function (documentClient, params) {
    return documentClient.createSet(params).promise();
};

exports.deleteImpl = function (documentClient, params) {
    return documentClient.delete(params).promise();
};

exports.getImpl = function (documentClient, params) {
    return documentClient.get(params).promise();
};

exports.putImpl = function (documentClient, params) {
    return documentClient.put(params).promise();
};

exports.queryImpl = function (documentClient, params) {
    return documentClient.query(params).promise();
};

exports.scanImpl = function (documentClient, params) {
    return documentClient.scan(params).promise();
};

exports.transactGetImpl = function (documentClient, params) {
    return documentClient.transactGet(params).promise();
};

exports.transactWriteImpl = function (documentClient, params) {
    return documentClient.transactWrite(params).promise();
};

exports.updateImpl = function (documentClient, params) {
    return documentClient.update(params).promise();
};
