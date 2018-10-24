/**
 * API V1
 * No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)
 *
 * OpenAPI spec version: v1
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 *
 * OpenAPI Generator version: 3.3.0-SNAPSHOT
 *
 * Do not edit the class manually.
 *
 */

(function(root, factory) {
  if (typeof define === 'function' && define.amd) {
    // AMD. Register as an anonymous module.
    define(['ApiClient'], factory);
  } else if (typeof module === 'object' && module.exports) {
    // CommonJS-like environments that support module.exports, like Node.
    module.exports = factory(require('../ApiClient'));
  } else {
    // Browser globals (root is window)
    if (!root.FormAPI) {
      root.FormAPI = {};
    }
    root.FormAPI.SubmissionDataRequest = factory(root.FormAPI.ApiClient);
  }
}(this, function(ApiClient) {
  'use strict';




  /**
   * The SubmissionDataRequest model module.
   * @module model/SubmissionDataRequest
   * @version 2.0.0
   */

  /**
   * Constructs a new <code>SubmissionDataRequest</code>.
   * @alias module:model/SubmissionDataRequest
   * @class
   * @param id {String} 
   * @param name {String} 
   * @param email {String} 
   * @param order {Number} 
   * @param fields {Array.<String>} 
   * @param metadata {Object} 
   * @param state {module:model/SubmissionDataRequest.StateEnum} 
   */
  var exports = function(id, name, email, order, fields, metadata, state) {
    var _this = this;

    _this['id'] = id;
    _this['name'] = name;
    _this['email'] = email;
    _this['order'] = order;
    _this['fields'] = fields;
    _this['metadata'] = metadata;
    _this['state'] = state;


  };

  /**
   * Constructs a <code>SubmissionDataRequest</code> from a plain JavaScript object, optionally creating a new instance.
   * Copies all relevant properties from <code>data</code> to <code>obj</code> if supplied or a new instance if not.
   * @param {Object} data The plain JavaScript object bearing properties of interest.
   * @param {module:model/SubmissionDataRequest} obj Optional instance to populate.
   * @return {module:model/SubmissionDataRequest} The populated <code>SubmissionDataRequest</code> instance.
   */
  exports.constructFromObject = function(data, obj) {
    if (data) {
      obj = obj || new exports();

      if (data.hasOwnProperty('id')) {
        obj['id'] = ApiClient.convertToType(data['id'], 'String');
      }
      if (data.hasOwnProperty('name')) {
        obj['name'] = ApiClient.convertToType(data['name'], 'String');
      }
      if (data.hasOwnProperty('email')) {
        obj['email'] = ApiClient.convertToType(data['email'], 'String');
      }
      if (data.hasOwnProperty('order')) {
        obj['order'] = ApiClient.convertToType(data['order'], 'Number');
      }
      if (data.hasOwnProperty('fields')) {
        obj['fields'] = ApiClient.convertToType(data['fields'], ['String']);
      }
      if (data.hasOwnProperty('metadata')) {
        obj['metadata'] = ApiClient.convertToType(data['metadata'], Object);
      }
      if (data.hasOwnProperty('state')) {
        obj['state'] = ApiClient.convertToType(data['state'], 'String');
      }
      if (data.hasOwnProperty('viewed_at')) {
        obj['viewed_at'] = ApiClient.convertToType(data['viewed_at'], 'String');
      }
      if (data.hasOwnProperty('completed_at')) {
        obj['completed_at'] = ApiClient.convertToType(data['completed_at'], 'String');
      }
    }
    return obj;
  }

  /**
   * @member {String} id
   */
  exports.prototype['id'] = undefined;
  /**
   * @member {String} name
   */
  exports.prototype['name'] = undefined;
  /**
   * @member {String} email
   */
  exports.prototype['email'] = undefined;
  /**
   * @member {Number} order
   */
  exports.prototype['order'] = undefined;
  /**
   * @member {Array.<String>} fields
   */
  exports.prototype['fields'] = undefined;
  /**
   * @member {Object} metadata
   */
  exports.prototype['metadata'] = undefined;
  /**
   * @member {module:model/SubmissionDataRequest.StateEnum} state
   */
  exports.prototype['state'] = undefined;
  /**
   * @member {String} viewed_at
   */
  exports.prototype['viewed_at'] = undefined;
  /**
   * @member {String} completed_at
   */
  exports.prototype['completed_at'] = undefined;


  /**
   * Allowed values for the <code>state</code> property.
   * @enum {String}
   * @readonly
   */
  exports.StateEnum = {
    /**
     * value: "pending"
     * @const
     */
    "pending": "pending",
    /**
     * value: "complete"
     * @const
     */
    "complete": "complete"  };


  return exports;
}));


