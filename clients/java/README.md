# formapi

## Requirements

Building the API client library requires [Maven](https://maven.apache.org/) to be installed.

## Installation

To install the API client library to your local Maven repository, simply execute:

```shell
mvn install
```

To deploy it to a remote Maven repository instead, configure the settings of the repository and execute:

```shell
mvn deploy
```

Refer to the [official documentation](https://maven.apache.org/plugins/maven-deploy-plugin/usage.html) for more information.

### Maven users

Add this dependency to your project's POM:

```xml
<dependency>
    <groupId>io.formapi</groupId>
    <artifactId>formapi</artifactId>
    <version>1.0.0</version>
    <scope>compile</scope>
</dependency>
```

### Gradle users

Add this dependency to your project's build file:

```groovy
compile "io.formapi:formapi:1.0.0"
```

### Others

At first generate the JAR by executing:

    mvn package

Then manually install the following JARs:

* target/formapi-1.0.0.jar
* target/lib/*.jar

## Getting Started

Please follow the [installation](#installation) instruction and execute the following Java code:

```java

import io.formapi.*;
import io.formapi.auth.*;
import io.formapi.*;
import io.formapi.PDFApi;

import java.io.File;
import java.util.*;

public class PDFApiExample {

    public static void main(String[] args) {
        ApiClient defaultClient = Configuration.getDefaultApiClient();
        
        // Configure HTTP basic authorization: basic
        HttpBasicAuth basic = (HttpBasicAuth) defaultClient.getAuthentication("basic");
        basic.setUsername("YOUR USERNAME");
        basic.setPassword("YOUR PASSWORD");

        PDFApi apiInstance = new PDFApi();
        Data data = new Data(); // Data | 
        try {
            InlineResponse201 result = apiInstance.combineSubmissions(data);
            System.out.println(result);
        } catch (ApiException e) {
            System.err.println("Exception when calling PDFApi#combineSubmissions");
            e.printStackTrace();
        }
    }
}

```

## Documentation for API Endpoints

All URIs are relative to *https://app.formapi.io/api/v1*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*PDFApi* | [**combineSubmissions**](docs/PDFApi.md#combineSubmissions) | **POST** /combined_submissions | Merge generated PDFs together
*PDFApi* | [**expireCombinedSubmission**](docs/PDFApi.md#expireCombinedSubmission) | **DELETE** /combined_submissions/{combined_submission_id} | Expire a combined submission
*PDFApi* | [**expireSubmission**](docs/PDFApi.md#expireSubmission) | **DELETE** /submissions/{submission_id} | Expire a PDF submission
*PDFApi* | [**generatePDF**](docs/PDFApi.md#generatePDF) | **POST** /templates/{template_id}/submissions | Generates a new PDF
*PDFApi* | [**getCombinedSubmission**](docs/PDFApi.md#getCombinedSubmission) | **GET** /combined_submissions/{combined_submission_id} | Check the status of a combined submission (merged PDFs)
*PDFApi* | [**getSubmission**](docs/PDFApi.md#getSubmission) | **GET** /submissions/{submission_id} | Check the status of a PDF
*PDFApi* | [**testAuthentication**](docs/PDFApi.md#testAuthentication) | **GET** /authentication | Test Authentication


## Documentation for Models

 - [Data](docs/Data.md)
 - [Data1](docs/Data1.md)
 - [InlineResponse200](docs/InlineResponse200.md)
 - [InlineResponse201](docs/InlineResponse201.md)
 - [InlineResponse2011](docs/InlineResponse2011.md)
 - [InlineResponse2011Submission](docs/InlineResponse2011Submission.md)
 - [InlineResponse201CombinedSubmission](docs/InlineResponse201CombinedSubmission.md)
 - [InlineResponse400](docs/InlineResponse400.md)
 - [InlineResponse401](docs/InlineResponse401.md)
 - [InlineResponse422](docs/InlineResponse422.md)


## Documentation for Authorization

Authentication schemes defined for the API:
### basic

- **Type**: HTTP basic authentication


## Recommendation

It's recommended to create an instance of `ApiClient` per thread in a multithreaded environment to avoid any potential issues.

## Author



