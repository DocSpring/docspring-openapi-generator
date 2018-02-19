/**
 * API V1
 * No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)
 *
 * OpenAPI spec version: v1
 * 
 *
 * NOTE: This class is auto generated by the swagger code generator program.
 * https://github.com/swagger-api/swagger-codegen.git
 * Do not edit the class manually.
 *
 */


import ApiClient from '../ApiClient';
import InlineResponse2011Submission from './InlineResponse2011Submission';





/**
* The InlineResponse2011 model module.
* @module model/InlineResponse2011
* @version 1.0.0
*/
export default class InlineResponse2011 {
    /**
    * Constructs a new <code>InlineResponse2011</code>.
    * @alias module:model/InlineResponse2011
    * @class
    * @param status {module:model/InlineResponse2011.StatusEnum} 
    */

    constructor(status) {
        

        
        

        this['status'] = status;

        
    }

    /**
    * Constructs a <code>InlineResponse2011</code> from a plain JavaScript object, optionally creating a new instance.
    * Copies all relevant properties from <code>data</code> to <code>obj</code> if supplied or a new instance if not.
    * @param {Object} data The plain JavaScript object bearing properties of interest.
    * @param {module:model/InlineResponse2011} obj Optional instance to populate.
    * @return {module:model/InlineResponse2011} The populated <code>InlineResponse2011</code> instance.
    */
    static constructFromObject(data, obj) {
        if (data) {
            obj = obj || new InlineResponse2011();

            
            
            

            if (data.hasOwnProperty('status')) {
                obj['status'] = ApiClient.convertToType(data['status'], 'String');
            }
            if (data.hasOwnProperty('submission')) {
                obj['submission'] = InlineResponse2011Submission.constructFromObject(data['submission']);
            }
        }
        return obj;
    }

    /**
    * @member {module:model/InlineResponse2011.StatusEnum} status
    */
    status = undefined;
    /**
    * @member {module:model/InlineResponse2011Submission} submission
    */
    submission = undefined;






    /**
    * Allowed values for the <code>status</code> property.
    * @enum {String}
    * @readonly
    */
    static StatusEnum = {
    
        /**
         * value: "success"
         * @const
         */
        "success": "success",
    
        /**
         * value: "error"
         * @const
         */
        "error": "error"    
    };



}


