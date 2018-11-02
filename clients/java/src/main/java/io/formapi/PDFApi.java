package io.formapi;

import io.formapi.CollectionFormats.*;

import retrofit2.Call;
import retrofit2.http.*;

import okhttp3.RequestBody;
import okhttp3.ResponseBody;
import okhttp3.MultipartBody;

import io.formapi.AuthenticationError;
import io.formapi.AuthenticationSuccessResponse;
import io.formapi.CombinedSubmission;
import io.formapi.CombinedSubmissionData;
import io.formapi.CreateCombinedSubmissionResponse;
import io.formapi.CreateSubmissionBatchResponse;
import io.formapi.CreateSubmissionData;
import io.formapi.CreateSubmissionDataBatchV1;
import io.formapi.CreateSubmissionDataRequestTokenResponse;
import io.formapi.CreateSubmissionResponse;
import io.formapi.Error;
import io.formapi.InvalidRequest;
import io.formapi.Submission;
import io.formapi.SubmissionBatch;
import io.formapi.SubmissionBatchData;
import io.formapi.SubmissionDataRequest;
import io.formapi.Template;
import io.formapi.UpdateDataRequestResponse;
import io.formapi.UpdateSubmissionDataRequestData;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public interface PdfApi {
  /**
   * Generates multiple PDFs
   * 
   * @param templateId  (required)
   * @param createSubmissionDataBatchV1  (required)
   * @return Call&lt;List&lt;CreateSubmissionResponse&gt;&gt;
   */
  @Headers({
    "Content-Type:application/json"
  })
  @POST("templates/{template_id}/submissions/batch")
  Call<List<CreateSubmissionResponse>> batchGeneratePdfV1(
    @retrofit2.http.Path("template_id") String templateId, @retrofit2.http.Body List<CreateSubmissionDataBatchV1> createSubmissionDataBatchV1
  );

  /**
   * Generates multiple PDFs
   * 
   * @param submissionBatchData  (required)
   * @return Call&lt;CreateSubmissionBatchResponse&gt;
   */
  @Headers({
    "Content-Type:application/json"
  })
  @POST("submissions/batches")
  Call<CreateSubmissionBatchResponse> batchGeneratePdfs(
    @retrofit2.http.Body SubmissionBatchData submissionBatchData
  );

  /**
   * Merge generated PDFs together
   * 
   * @param combinedSubmissionData  (required)
   * @return Call&lt;CreateCombinedSubmissionResponse&gt;
   */
  @Headers({
    "Content-Type:application/json"
  })
  @POST("combined_submissions")
  Call<CreateCombinedSubmissionResponse> combineSubmissions(
    @retrofit2.http.Body CombinedSubmissionData combinedSubmissionData
  );

  /**
   * Creates a new data request token for form authentication
   * 
   * @param dataRequestId  (required)
   * @return Call&lt;CreateSubmissionDataRequestTokenResponse&gt;
   */
  @POST("data_requests/{data_request_id}/tokens")
  Call<CreateSubmissionDataRequestTokenResponse> createDataRequestToken(
    @retrofit2.http.Path("data_request_id") String dataRequestId
  );

  /**
   * Expire a combined submission
   * 
   * @param combinedSubmissionId  (required)
   * @return Call&lt;CombinedSubmission&gt;
   */
  @DELETE("combined_submissions/{combined_submission_id}")
  Call<CombinedSubmission> expireCombinedSubmission(
    @retrofit2.http.Path("combined_submission_id") String combinedSubmissionId
  );

  /**
   * Expire a PDF submission
   * 
   * @param submissionId  (required)
   * @return Call&lt;Submission&gt;
   */
  @DELETE("submissions/{submission_id}")
  Call<Submission> expireSubmission(
    @retrofit2.http.Path("submission_id") String submissionId
  );

  /**
   * Generates a new PDF
   * 
   * @param templateId  (required)
   * @param createSubmissionData  (required)
   * @return Call&lt;CreateSubmissionResponse&gt;
   */
  @Headers({
    "Content-Type:application/json"
  })
  @POST("templates/{template_id}/submissions")
  Call<CreateSubmissionResponse> generatePDF(
    @retrofit2.http.Path("template_id") String templateId, @retrofit2.http.Body CreateSubmissionData createSubmissionData
  );

  /**
   * Check the status of a combined submission (merged PDFs)
   * 
   * @param combinedSubmissionId  (required)
   * @return Call&lt;CombinedSubmission&gt;
   */
  @GET("combined_submissions/{combined_submission_id}")
  Call<CombinedSubmission> getCombinedSubmission(
    @retrofit2.http.Path("combined_submission_id") String combinedSubmissionId
  );

  /**
   * Look up a submission data request
   * 
   * @param dataRequestId  (required)
   * @return Call&lt;SubmissionDataRequest&gt;
   */
  @GET("data_requests/{data_request_id}")
  Call<SubmissionDataRequest> getDataRequest(
    @retrofit2.http.Path("data_request_id") String dataRequestId
  );

  /**
   * Check the status of a PDF
   * 
   * @param submissionId  (required)
   * @return Call&lt;Submission&gt;
   */
  @GET("submissions/{submission_id}")
  Call<Submission> getSubmission(
    @retrofit2.http.Path("submission_id") String submissionId
  );

  /**
   * Check the status of a submission batch job
   * 
   * @param submissionBatchId  (required)
   * @param includeSubmissions  (optional)
   * @return Call&lt;SubmissionBatch&gt;
   */
  @GET("submissions/batches/{submission_batch_id}")
  Call<SubmissionBatch> getSubmissionBatch(
    @retrofit2.http.Path("submission_batch_id") String submissionBatchId, @retrofit2.http.Query("include_submissions") Boolean includeSubmissions
  );

  /**
   * Get a list of all templates
   * 
   * @param page Default: 1 (optional)
   * @param perPage Default: 50 (optional)
   * @return Call&lt;List&lt;Template&gt;&gt;
   */
  @GET("templates")
  Call<List<Template>> getTemplates(
    @retrofit2.http.Query("page") Integer page, @retrofit2.http.Query("per_page") Integer perPage
  );

  /**
   * Test Authentication
   * 
   * @return Call&lt;AuthenticationSuccessResponse&gt;
   */
  @GET("authentication")
  Call<AuthenticationSuccessResponse> testAuthentication();
    

  /**
   * Update a submission data request
   * 
   * @param dataRequestId  (required)
   * @param updateSubmissionDataRequestData  (required)
   * @return Call&lt;UpdateDataRequestResponse&gt;
   */
  @Headers({
    "Content-Type:application/json"
  })
  @PUT("data_requests/{data_request_id}")
  Call<UpdateDataRequestResponse> updateDataRequest(
    @retrofit2.http.Path("data_request_id") String dataRequestId, @retrofit2.http.Body UpdateSubmissionDataRequestData updateSubmissionDataRequestData
  );

}
