# formapi

formapi - JavaScript client for formapi
No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)
This SDK is automatically generated by the [Swagger Codegen](https://github.com/swagger-api/swagger-codegen) project:

- API version: v1
- Package version: 1.0.0
- Build package: io.swagger.codegen.languages.JavascriptClientCodegen

## Installation

### For [Node.js](https://nodejs.org/)

#### npm

To publish the library as a [npm](https://www.npmjs.com/),
please follow the procedure in ["Publishing npm packages"](https://docs.npmjs.com/getting-started/publishing-npm-packages).

Then install it via:

```shell
npm install formapi --save
```

#### git
#
If the library is hosted at a git repository, e.g.
https://github.com/GIT_USER_ID/GIT_REPO_ID
then install it via:

```shell
    npm install GIT_USER_ID/GIT_REPO_ID --save
```

### For browser

The library also works in the browser environment via npm and [browserify](http://browserify.org/). After following
the above steps with Node.js and installing browserify with `npm install -g browserify`,
perform the following (assuming *main.js* is your entry file):

```shell
browserify main.js > bundle.js
```

Then include *bundle.js* in the HTML pages.

### Webpack Configuration

Using Webpack you may encounter the following error: "Module not found: Error:
Cannot resolve module", most certainly you should disable AMD loader. Add/merge
the following section to your webpack config:

```javascript
module: {
  rules: [
    {
      parser: {
        amd: false
      }
    }
  ]
}
```

## Getting Started

Please follow the [installation](#installation) instruction and execute the following JS code:

```javascript
var formapi = require('formapi');

var defaultClient = formapi.ApiClient.instance;

// Configure HTTP basic authorization: basic
var basic = defaultClient.authentications['basic'];
basic.username = 'YOUR USERNAME'
basic.password = 'YOUR PASSWORD'

var api = new formapi.PDFApi()

var opts = {
  'data': new formapi.Data() // {Data}
};

var callback = function(error, data, response) {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
};
api.combineSubmissions(opts, callback);

```

## Documentation for API Endpoints

All URIs are relative to *https://app.formapi.io/api/v1*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*formapi.PDFApi* | [**combineSubmissions**](docs/PDFApi.md#combineSubmissions) | **POST** /combined_submissions | Merge generated PDFs together
*formapi.PDFApi* | [**expireCombinedSubmission**](docs/PDFApi.md#expireCombinedSubmission) | **DELETE** /combined_submissions/{combined_submission_id} | Expire a combined submission
*formapi.PDFApi* | [**expireSubmission**](docs/PDFApi.md#expireSubmission) | **DELETE** /submissions/{submission_id} | Expire a PDF submission
*formapi.PDFApi* | [**generatePDF**](docs/PDFApi.md#generatePDF) | **POST** /templates/{template_id}/submissions | Generates a new PDF
*formapi.PDFApi* | [**getCombinedSubmission**](docs/PDFApi.md#getCombinedSubmission) | **GET** /combined_submissions/{combined_submission_id} | Check the status of a combined submission (merged PDFs)
*formapi.PDFApi* | [**getSubmission**](docs/PDFApi.md#getSubmission) | **GET** /submissions/{submission_id} | Check the status of a PDF
*formapi.PDFApi* | [**testAuthentication**](docs/PDFApi.md#testAuthentication) | **GET** /authentication | Test Authentication


## Documentation for Models

 - [formapi.Data](docs/Data.md)
 - [formapi.Data1](docs/Data1.md)
 - [formapi.InlineResponse200](docs/InlineResponse200.md)
 - [formapi.InlineResponse201](docs/InlineResponse201.md)
 - [formapi.InlineResponse2011](docs/InlineResponse2011.md)
 - [formapi.InlineResponse2011Submission](docs/InlineResponse2011Submission.md)
 - [formapi.InlineResponse201CombinedSubmission](docs/InlineResponse201CombinedSubmission.md)
 - [formapi.InlineResponse400](docs/InlineResponse400.md)
 - [formapi.InlineResponse401](docs/InlineResponse401.md)
 - [formapi.InlineResponse422](docs/InlineResponse422.md)


## Documentation for Authorization


### basic

- **Type**: HTTP basic authentication
