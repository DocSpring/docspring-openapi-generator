/*
 * API V1
 *
 * No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)
 *
 * OpenAPI spec version: v1
 *
 * Generated by: https://github.com/openapitools/openapi-generator.git
 */

using System;
using System.IO;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using System.Reflection;
using RestSharp;
using NUnit.Framework;

using FormApi.Client.Client;
using FormApi.Client.Api;
using FormApi.Client.Model;

namespace FormApi.Client.Test
{
    /// <summary>
    ///  Class for testing PDFApi
    /// </summary>
    /// <remarks>
    /// This file is automatically generated by OpenAPI Generator (https://openapi-generator.tech).
    /// Please update the test case below to test the API endpoint.
    /// </remarks>
    [TestFixture]
    public class PDFApiTests
    {
        private PDFApi instance;

        /// <summary>
        /// Setup before each unit test
        /// </summary>
        [SetUp]
        public void Init()
        {
            Configuration.Default.Username = "api_token123";
            Configuration.Default.Password = "testsecret123";
            Configuration.Default.BasePath = "http://localhost:31337/api/v1";
            instance = new PDFApi();
        }

        /// <summary>
        /// Clean up after each unit test
        /// </summary>
        [TearDown]
        public void Cleanup()
        {

        }

        /// <summary>
        /// Test an instance of PDFApi
        /// </summary>
        [Test]
        public void InstanceTest()
        {
            // TODO uncomment below to test 'IsInstanceOfType' PDFApi
            //Assert.IsInstanceOfType(typeof(PDFApi), instance, "instance is a PDFApi");
        }


        /// <summary>
        /// Test BatchGeneratePDF
        /// </summary>
        [Test]
        public void BatchGeneratePDFTest()
        {
            string templateId = "tpl_000000000000000001";
            var createSubmissionData = new List<CreateSubmissionData>(
              new CreateSubmissionData[] {
                new CreateSubmissionData(
                  false,
                  new {
                    title = "Test PDF",
                    description = "This PDF is great!"
                  }
                ),
                new CreateSubmissionData(
                  false,
                  new {
                    title = "Test PDF 2",
                    description = "This PDF is also great!"
                  }
                )
              }
            );

            List<CreateSubmissionResponse> response = instance.BatchGeneratePDF(templateId, createSubmissionData);
            Assert.IsInstanceOf<List<CreateSubmissionResponse>> (response, "response is List<CreateSubmissionResponse>");
            Assert.That(response, Has.Count.EqualTo(2));
            var firstResponse = response.First();
            Assert.AreEqual(
              CreateSubmissionResponse.StatusEnum.Success,
              firstResponse.Status);
            var firstSubmission = firstResponse.Submission;
            StringAssert.StartsWith("sub_", firstSubmission.Id);
            Assert.AreEqual(false, firstSubmission.Expired);
            Assert.AreEqual(
              Submission.StateEnum.Pending,
              firstSubmission.State);
        }

        /// <summary>
        /// Test CombineSubmissions
        /// </summary>
        [Test]
        public void CombineSubmissionsTest()
        {
            var combinedSubmissionData = new CombinedSubmissionData(
              false,
              new List<string>(new string[] {
                "sub_000000000000000001",
                "sub_000000000000000002"
              })
            );
            var response = instance.CombineSubmissions(combinedSubmissionData);
            Assert.IsInstanceOf<CreateCombinedSubmissionResponse> (response, "response is CreateCombinedSubmissionResponse");
            Assert.AreEqual(
              CreateCombinedSubmissionResponse.StatusEnum.Success,
              response.Status);
            var combinedSubmission = response.CombinedSubmission;
            StringAssert.StartsWith("com_", combinedSubmission.Id);
            Assert.AreEqual(
              CombinedSubmission.StateEnum.Pending,
              combinedSubmission.State);
        }

        /// <summary>
        /// Test ExpireCombinedSubmission
        /// </summary>
        [Test]
        public void ExpireCombinedSubmissionTest()
        {
            string combinedSubmissionId = "com_000000000000000001";
            var combinedSubmission = instance.ExpireCombinedSubmission(combinedSubmissionId);
            Assert.IsInstanceOf<CombinedSubmission> (combinedSubmission, "response is CombinedSubmission");
            Assert.AreEqual(
              true, combinedSubmission.Expired);
        }

        /// <summary>
        /// Test ExpireSubmission
        /// </summary>
        [Test]
        public void ExpireSubmissionTest()
        {
            // TODO uncomment below to test the method and replace null with proper value
            string submissionId = "sub_000000000000000001";
            var submission = instance.ExpireSubmission(submissionId);
            Assert.IsInstanceOf<Submission> (submission, "response is Submission");
            Assert.AreEqual(
              true, submission.Expired);
        }

        /// <summary>
        /// Test GeneratePDF
        /// </summary>
        [Test]
        public void GeneratePDFTest()
        {
            string templateId = "tpl_000000000000000001";
            var createSubmissionData = new CreateSubmissionData(
              false,
              new {
                title = "Test PDF",
                description = "This PDF is great!"
              }
            );

            var response = instance.GeneratePDF(templateId, createSubmissionData);
            Assert.IsInstanceOf<CreateSubmissionResponse> (response, "response is CreateSubmissionResponse");
            Assert.AreEqual(
              CreateSubmissionResponse.StatusEnum.Success,
              response.Status);
            var submission = response.Submission;
            StringAssert.StartsWith("sub_", submission.Id);
            Assert.AreEqual(false, submission.Expired);
            Assert.AreEqual(
              Submission.StateEnum.Pending,
              submission.State);
        }

        /// <summary>
        /// Test GetCombinedSubmission
        /// </summary>
        [Test]
        public void GetCombinedSubmissionTest()
        {
            string combinedSubmissionId = "com_000000000000000001";
            var response = instance.GetCombinedSubmission(combinedSubmissionId);
            Assert.IsInstanceOf<CombinedSubmission> (response, "response is CombinedSubmission");
            StringAssert.StartsWith("com_", response.Id);
        }

        /// <summary>
        /// Test GetSubmission
        /// </summary>
        [Test]
        public void GetSubmissionTest()
        {
            string submissionId = "sub_000000000000000001";
            var response = instance.GetSubmission(submissionId);
            Assert.IsInstanceOf<Submission> (response, "response is Submission");
            StringAssert.StartsWith("sub_", response.Id);
        }

        /// <summary>
        /// Test GetTemplates
        /// </summary>
        [Test]
        public void GetTemplatesTest()
        {
            int? page = 1;
            int? perPage = 10;
            var response = instance.GetTemplates(page, perPage);
            Assert.IsInstanceOf<List<Template>> (response, "response is List<Template>");
            Assert.That(response, Has.Count.EqualTo(2));
            StringAssert.StartsWith("tpl_", response.First().Id);
        }

        /// <summary>
        /// Test TestAuthentication
        /// </summary>
        [Test]
        public void TestAuthenticationTest()
        {
            var response = instance.TestAuthentication();
            Assert.IsInstanceOf<AuthenticationSuccessResponse> (response, "response is AuthenticationSuccessResponse");
            Assert.AreEqual(
              AuthenticationSuccessResponse.StatusEnum.Success,
              response.Status);
        }

    }

}