<?php

namespace FormAPI;

class Client extends Api\PDFApi
{
    /**
     * Operation generatePDF
     *
     * Generates a new PDF
     *
     * @param  string $template_id template_id (required)
     * @param  \FormAPI\Model\CreateSubmissionBody $create_submission_body create_submission_body (optional)
     * @param  integer $timeout (optional)
     *
     * @throws \FormAPI\ApiException on non-2xx response
     * @throws \InvalidArgumentException
     * @return \FormAPI\Model\Submission
     */
    public function generatePDF($template_id, $create_submission_body = null, $timeout = 60)
    {
        $generate_response = parent::generatePDF($template_id, $create_submission_body);
        $submission = $generate_response->getSubmission();

        while ($submission->getState() == 'pending') {
          sleep(1);
          $submission = parent::getSubmission($submission->getId());
          $timeout--;
          if ($timeout < 0) {
            throw new ApiException(
                "Timeout Error: PDF was not processed within " . $timeout . " seconds."
            );
          }
        }
        return $submission;
    }

    /**
     * Operation combineSubmissions
     *
     * Merge generated PDFs together
     *
     * @param  \FormAPI\Model\CombinedSubmissionData $combined_submission_data combined_submission_data (optional)
     *
     * @throws \FormAPI\ApiException on non-2xx response
     * @throws \InvalidArgumentException
     * @return \FormAPI\Model\CreateCombinedSubmissionResponse|\FormAPI\Model\Error|\FormAPI\Model\AuthenticationError|\FormAPI\Model\InvalidRequest
     */
    public function combineSubmissions($combined_submission_data = null)
    {
        $combine_response = parent::combineSubmissions($combined_submission_data);
        $combined_submission = $combine_response->getCombinedSubmission();
        $id = $combined_submission->getId();
        while ($combined_submission->getState() == 'pending') {
          sleep(1);
          $combined_submission = parent::getCombinedSubmission($id);
          $timeout--;
          if ($timeout < 0) {
            throw new ApiException(
                "Timeout Error: PDF was not processed within " . $timeout . " seconds."
            );
          }
        }
        return $combined_submission;
    }
}
