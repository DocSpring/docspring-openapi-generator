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
     * @return \FormAPI\Model\InlineResponse2011
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

        $response = new Model\InlineResponse2011([
          "status" => $submission->getState(),
          "submission" => $submission
        ]);
        return $response;
    }
}
