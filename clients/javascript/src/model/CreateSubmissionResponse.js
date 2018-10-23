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
    define(['ApiClient', 'model/Submission', 'model/SubmissionDataRequest'], factory);
  } else if (typeof module === 'object' && module.exports) {
    // CommonJS-like environments that support module.exports, like Node.
    module.exports = factory(require('../ApiClient'), require('./Submission'), require('./SubmissionDataRequest'));
  } else {
    // Browser globals (root is window)
    if (!root.FormAPI) {
      root.FormAPI = {};
    }
    root.FormAPI.CreateSubmissionResponse = factory(root.FormAPI.ApiClient, root.FormAPI.Submission, root.FormAPI.SubmissionDataRequest);
  }
}(this, function(ApiClient, Submission, SubmissionDataRequest) {
  'use strict';




  /**
   * The CreateSubmissionResponse model module.
   * @module model/CreateSubmissionResponse
   * @version 1.0.0
   */

  /**
   * Constructs a new <code>CreateSubmissionResponse</code>.
   * @alias module:model/CreateSubmissionResponse
   * @class
   */
  var exports = function() {
    var _this = this;





  };

  /**
   * Constructs a <code>CreateSubmissionResponse</code> from a plain JavaScript object, optionally creating a new instance.
   * Copies all relevant properties from <code>data</code> to <code>obj</code> if supplied or a new instance if not.
   * @param {Object} data The plain JavaScript object bearing properties of interest.
   * @param {module:model/CreateSubmissionResponse} obj Optional instance to populate.
   * @return {module:model/CreateSubmissionResponse} The populated <code>CreateSubmissionResponse</code> instance.
   */
  exports.constructFromObject = function(data, obj) {
    if (data) {
      obj = obj || new exports();

      if (data.hasOwnProperty('submission')) {
        obj['submission'] = Submission.constructFromObject(data['submission']);
      }
      if (data.hasOwnProperty('errors')) {
        obj['errors'] = ApiClient.convertToType(data['errors'], ['String']);
      }
      if (data.hasOwnProperty('data_requests')) {
        obj['data_requests'] = ApiClient.convertToType(data['data_requests'], [SubmissionDataRequest]);
      }
      if (data.hasOwnProperty('status')) {
        obj['status'] = ApiClient.convertToType(data['status'], 'String');
      }
    }
    return obj;
  }

  /**
   * @member {module:model/Submission} submission
   */
  exports.prototype['submission'] = undefined;
  /**
   * @member {Array.<String>} errors
   */
  exports.prototype['errors'] = undefined;
  /**
   * @member {Array.<module:model/SubmissionDataRequest>} data_requests
   */
  exports.prototype['data_requests'] = undefined;
  /**
   * @member {module:model/CreateSubmissionResponse.StatusEnum} status
   */
  exports.prototype['status'] = undefined;


  /**
   * Allowed values for the <code>status</code> property.
   * @enum {String}
   * @readonly
   */
  exports.StatusEnum = {
    /**
     * value: "success"
     * @const
     */
    "success": "success",
    /**
     * value: "error"
     * @const
     */
    "error": "error"  };


  return exports;
}));


