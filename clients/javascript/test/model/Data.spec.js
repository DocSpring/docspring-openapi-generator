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

(function(root, factory) {
  if (typeof define === 'function' && define.amd) {
    // AMD.
    define(['expect.js', '../../src/index'], factory);
  } else if (typeof module === 'object' && module.exports) {
    // CommonJS-like environments that support module.exports, like Node.
    factory(require('expect.js'), require('../../src/index'));
  } else {
    // Browser globals (root is window)
    factory(root.expect, root.formapi);
  }
}(this, function(expect, formapi) {
  'use strict';

  var instance;

  beforeEach(function() {
    instance = new formapi.Data();
  });

  var getProperty = function(object, getter, property) {
    // Use getter method if present; otherwise, get the property directly.
    if (typeof object[getter] === 'function')
      return object[getter]();
    else
      return object[property];
  }

  var setProperty = function(object, setter, property, value) {
    // Use setter method if present; otherwise, set the property directly.
    if (typeof object[setter] === 'function')
      object[setter](value);
    else
      object[property] = value;
  }

  describe('Data', function() {
    it('should create an instance of Data', function() {
      // uncomment below and update the code to test Data
      //var instane = new formapi.Data();
      //expect(instance).to.be.a(formapi.Data);
    });

    it('should have the property test (base name: "test")', function() {
      // uncomment below and update the code to test the property test
      //var instane = new formapi.Data();
      //expect(instance).to.be();
    });

    it('should have the property submissionIds (base name: "submission_ids")', function() {
      // uncomment below and update the code to test the property submissionIds
      //var instane = new formapi.Data();
      //expect(instance).to.be();
    });

    it('should have the property metadata (base name: "metadata")', function() {
      // uncomment below and update the code to test the property metadata
      //var instane = new formapi.Data();
      //expect(instance).to.be();
    });

    it('should have the property expiresIn (base name: "expires_in")', function() {
      // uncomment below and update the code to test the property expiresIn
      //var instane = new formapi.Data();
      //expect(instance).to.be();
    });

  });

}));
