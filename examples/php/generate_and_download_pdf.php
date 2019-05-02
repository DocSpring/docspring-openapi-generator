#!/usr/bin/env php
<?php
# This example demonstrates generating a PDF from a preconfigured template,
# and downloading the PDF to a local file.
#
# You can run this example with: php ./examples/php/generate_and_download_pdf.php

$loader = require(__DIR__ . '/../../clients/php/vendor/autoload.php');

foreach (glob(__DIR__ . '/../../clients/php/lib/**/*.php') as $filename)
{
    require_once($filename);
}

$formapi = new FormAPI\Client();
$formapi->getConfig()->setUsername("api_test_eFQz2rYXxCEeCPnRMH");
$formapi->getConfig()->setPassword("QpttJtiIy5_i-uorLi9enzZ5VuFx6lFvJYu53YUyVz8");
$formapi->getConfig()->setHost("app.formapi.local:3000");
$formapi->getConfig()->setScheme("http");

$template_id = 'tpl_gdHHYPqcEF94Phgzfh';
$pdf_filename = '/tmp/formapi-php.pdf';

try {
  $data = new FormAPI\Model\SubmissionData();
  $data->setData([
    "first_name" => 'John',
    "last_name" => 'Smith',
    "favorite_color" => 'Green'
  ]);
  $data->setTest(true);
  $data->setMetadata(["source" => "example script"]);

  echo "Generating PDF...\n";

  $submission = $formapi->generatePDF($template_id, $data);

  if ($submission->getStatus() == "processed") {
    echo "Downloading PDF to " . $pdf_filename . "...\n";
    $downloaded_pdf = fopen($submission->getDownloadUrl(), 'r');
    file_put_contents($pdf_filename, $downloaded_pdf);

    echo "Opening " . $pdf_filename . "...\n";
    system("type xdg-open > /dev/null 2>&1 && xdg-open '"
      . $pdf_filename . "' || open '" . $pdf_filename ."'");
  } else {
      echo "Error generating PDF!\n";
      echo $submission;
  }
} catch (FormAPI\ApiException $exception) {
  echo $exception . "\n";
  echo $exception->getMessage() . "\n";
  echo $exception->getCode() . "\n";
  echo $exception->getResponseBody() . "\n";
}
