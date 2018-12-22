package io.formapi;

import io.formapi.ApiClient;
import io.formapi.AuthenticationError;
import io.formapi.AuthenticationSuccessResponse;
import io.formapi.CombinePdfsData;
import io.formapi.CombinedSubmission;
import io.formapi.CombinedSubmissionData;
import io.formapi.CreateCombinedSubmissionResponse;
import io.formapi.CreateCustomFileData;
import io.formapi.CreateCustomFileResponse;
import io.formapi.CreateSubmissionBatchResponse;
import io.formapi.CreateSubmissionDataRequestTokenResponse;
import io.formapi.CreateSubmissionResponse;
import io.formapi.CreateTemplateData;
import io.formapi.Error;
import io.formapi.InvalidRequest;
import io.formapi.PendingTemplate;
import io.formapi.Submission;
import io.formapi.SubmissionBatch;
import io.formapi.SubmissionBatchData;
import io.formapi.SubmissionData;
import io.formapi.SubmissionDataRequest;
import io.formapi.Template;
import io.formapi.UpdateDataRequestResponse;
import io.formapi.UpdateSubmissionDataRequestData;
import org.junit.Before;
import org.junit.Test;
import static org.hamcrest.MatcherAssert.assertThat;
import static org.hamcrest.Matchers.startsWith;
import static org.junit.Assert.*;
import static org.hamcrest.CoreMatchers.*;

import java.io.File;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

/**
 * API tests for PdfApi
 */
public class PdfApiIntegrationTest {

    private PdfApi api;
    private static final Logger logger = LoggerFactory.getLogger(PdfApiIntegrationTest.class);

    @Before
    public void setup() {
      ApiClient client = new ApiClient("api_token_basic", "api_token123", "testsecret123");
      client.getAdapterBuilder().baseUrl("http://api.formapi.local:31337/api/v1/");
      api = client.createService(PdfApi.class);
    }

    /**
     * Generates multiple PDFs
     *
     *
     */
    @Test
    public void batchGeneratePdfV1Test() {
        String templateId = null;
        List<SubmissionData> submissionDataBatchV1 = null;
        // List<CreateSubmissionResponse> response = api.batchGeneratePdfV1(templateId, submissionDataBatchV1);

        // TODO: test validations
    }
    /**
     * Generates multiple PDFs
     *
     *
     */
    @Test
    public void batchGeneratePdfsTest() {
        SubmissionBatchData submissionBatchData = null;
        // CreateSubmissionBatchResponse response = api.batchGeneratePdfs(submissionBatchData);

        // TODO: test validations
    }
    /**
     * Merge generated PDFs together
     *
     *
     */
    @Test
    public void combineSubmissionsTest() {
        CombinedSubmissionData combinedSubmissionData = null;
        // CreateCombinedSubmissionResponse response = api.combineSubmissions(combinedSubmissionData);

        // TODO: test validations
    }
    /**
     * Creates a new data request token for form authentication
     *
     *
     */
    @Test
    public void createDataRequestTokenTest() {
        String dataRequestId = null;
        // submissionDataRequestTokenResponse response = api.createDataRequestToken(dataRequestId);

        // TODO: test validations
    }
    /**
     * Expire a combined submission
     *
     *
     */
    @Test
    public void expireCombinedSubmissionTest() {
        String combinedSubmissionId = null;
        // CombinedSubmission response = api.expireCombinedSubmission(combinedSubmissionId);

        // TODO: test validations
    }
    /**
     * Expire a PDF submission
     *
     *
     */
    @Test
    public void expireSubmissionTest() {
        String submissionId = null;
        // Submission response = api.expireSubmission(submissionId);

        // TODO: test validations
    }
    /**
     * Generates a new PDF
     *
     *
     */
    @Test
    public void generatePDFTest() throws java.io.IOException {
        String templateId = "tpl_000000000000000001";
        SubmissionData submissionData = new SubmissionData();
        Map<String, String> data = new HashMap<>();
        data.put("title", "Test PDF");
        data.put("description", "This PDF is great!");
        submissionData.setData(data);
        retrofit2.Response<CreateSubmissionResponse> retrofitResponse = api.generatePDF(
          templateId,
          submissionData
        ).execute();
        if (!retrofitResponse.isSuccessful()) {
          logger.info(retrofitResponse.errorBody().string());
        }
        assertEquals(201, retrofitResponse.code());
        CreateSubmissionResponse response = retrofitResponse.body();

        assertEquals(
          CreateSubmissionResponse.StatusEnum.SUCCESS,
          response.getStatus()
        );

        Submission submission = response.getSubmission();
        assertThat(submission.getId(), startsWith("sub_"));
        assertEquals(false, submission.getExpired());
        assertEquals(Submission.StateEnum.PENDING, submission.getState());
    }
    /**
     * Generates a new PDF with a Data Request
     *
     *
     */
    @Test
    public void generatePDFWithDataRequestTest() throws java.io.IOException {
        String templateId = "tpl_000000000000000001";
        SubmissionData submissionData = new SubmissionData();
        Map<String, String> data = new HashMap<>();
        data.put("title", "Test PDF");
        data.put("description", "This PDF is great!");
        submissionData.setData(data);

        List<CreateSubmissionDataRequestData> dataRequestsList = new ArrayList<>();
        CreateSubmissionDataRequestData dataRequestData = new CreateSubmissionDataRequestData();
        dataRequestData.setAuthType(CreateSubmissionDataRequestData.AuthTypeEnum.EMAIL_LINK);
        dataRequestData.setName("John Smith");
        dataRequestData.setEmail("jsmith@example.com");
        List<String> fields = new ArrayList<>();
        fields.add("description");
        dataRequestData.setFields(fields);

        dataRequestsList.add(dataRequestData);
        submissionData.setDataRequests(dataRequestsList);

        retrofit2.Response<CreateSubmissionResponse> retrofitResponse = api.generatePDF(
          templateId,
          submissionData
        ).execute();
        if (!retrofitResponse.isSuccessful()) {
          logger.info(retrofitResponse.errorBody().string());
        }
        assertEquals(201, retrofitResponse.code());
        CreateSubmissionResponse response = retrofitResponse.body();

        assertEquals(
          CreateSubmissionResponse.StatusEnum.SUCCESS,
          response.getStatus()
        );

        Submission submission = response.getSubmission();
        assertThat(submission.getId(), startsWith("sub_"));
        assertEquals(false, submission.getExpired());
        assertEquals(Submission.StateEnum.WAITING_FOR_DATA_REQUESTS,
          submission.getState());

        assertEquals(1, submission.getDataRequests().size());
        SubmissionDataRequest dataRequest = submission.getDataRequests().get(0);
        assertThat(dataRequest.getId(), startsWith("drq_"));
        assertEquals(SubmissionDataRequest.StateEnum.PENDING, dataRequest.getState());
        assertThat(dataRequest.getFields(), is(Arrays.asList("description")));
        assertEquals(new Integer(0), new Integer(dataRequest.getOrder()));
        assertEquals("John Smith", dataRequest.getName());
        assertEquals("jsmith@example.com", dataRequest.getEmail());
    }
    /**
     * Check the status of a combined submission (merged PDFs)
     *
     *
     */
    @Test
    public void getCombinedSubmissionTest() {
        String combinedSubmissionId = null;
        // CombinedSubmission response = api.getCombinedSubmission(combinedSubmissionId);

        // TODO: test validations
    }
    /**
     * Look up a submission data request
     *
     *
     */
    @Test
    public void getDataRequestTest() {
        String dataRequestId = null;
        // SubmissionDataRequest response = api.getDataRequest(dataRequestId);

        // TODO: test validations
    }
    /**
     * Check the status of a PDF
     *
     *
     */
    @Test
    public void getSubmissionTest() {
        String submissionId = null;
        // Submission response = api.getSubmission(submissionId);

        // TODO: test validations
    }
    /**
     * Check the status of a submission batch job
     *
     *
     */
    @Test
    public void getSubmissionBatchTest() {
        String submissionBatchId = null;
        Boolean includeSubmissions = null;
        // SubmissionBatch response = api.getSubmissionBatch(submissionBatchId, includeSubmissions);

        // TODO: test validations
    }
    /**
     * Get a list of all templates
     *
     *
     */
    @Test
    public void getTemplatesTest() {
        Integer page = null;
        Integer perPage = null;
        // List<Template> response = api.getTemplates(page, perPage);

        // TODO: test validations
    }
    /**
     * Test Authentication
     *
     *
     */
    @Test
    public void testAuthenticationTest() {
        // AuthenticationSuccessResponse response = api.testAuthentication();

        // TODO: test validations
    }
    /**
     * Update a submission data request
     *
     *
     */
    @Test
    public void updateDataRequestTest() {
        String dataRequestId = null;
        UpdateSubmissionDataRequestData updateSubmissionDataRequestData = null;
        // UpdateDataRequestResponse response = api.updateDataRequest(dataRequestId, updateSubmissionDataRequestData);

        // TODO: test validations
    }
}
