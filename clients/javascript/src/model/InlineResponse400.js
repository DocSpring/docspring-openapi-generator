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





/**
* The InlineResponse400 model module.
* @module model/InlineResponse400
* @version 1.0.0
*/
export default class InlineResponse400 {
    /**
    * Constructs a new <code>InlineResponse400</code>.
    * @alias module:model/InlineResponse400
    * @class
    * @param status {module:model/InlineResponse400.StatusEnum} 
    * @param error {String} 
    */

    constructor(status, error) {
        

        
        

        this['status'] = status;this['error'] = error;

        
    }

    /**
    * Constructs a <code>InlineResponse400</code> from a plain JavaScript object, optionally creating a new instance.
    * Copies all relevant properties from <code>data</code> to <code>obj</code> if supplied or a new instance if not.
    * @param {Object} data The plain JavaScript object bearing properties of interest.
    * @param {module:model/InlineResponse400} obj Optional instance to populate.
    * @return {module:model/InlineResponse400} The populated <code>InlineResponse400</code> instance.
    */
    static constructFromObject(data, obj) {
        if (data) {
            obj = obj || new InlineResponse400();

            
            
            

            if (data.hasOwnProperty('status')) {
                obj['status'] = ApiClient.convertToType(data['status'], 'String');
            }
            if (data.hasOwnProperty('error')) {
                obj['error'] = ApiClient.convertToType(data['error'], 'String');
            }
        }
        return obj;
    }

    /**
    * @member {module:model/InlineResponse400.StatusEnum} status
    */
    status = undefined;
    /**
    * @member {String} error
    */
    error = undefined;






    /**
    * Allowed values for the <code>status</code> property.
    * @enum {String}
    * @readonly
    */
    static StatusEnum = {
    
        /**
         * value: "error"
         * @const
         */
        "error": "error"    
    };



}


