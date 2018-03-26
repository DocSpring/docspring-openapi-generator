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
$formapi->getConfig()->setUsername("yRaaR9JmTPtGX7EN");
$formapi->getConfig()->setPassword("IB3TRkSdm4f2BdtU_D3YgxjdMB7l-r2fOgvxD1Yzwec");

$template_id = '6zz3dYRYM67fxMXA';
$pdf_filename = '/tmp/formapi-php.pdf';

try {
  $data = new FormAPI\Model\CreateSubmissionBody();
  $data->setData([
    "first_name" => 'John',
    "last_name" => 'Smith',
    "favorite_color" => 'Green'
  ]);
  $data->setTest(true);
  $data->setMetadata(["source" => "example script"]);

  echo "Generating PDF...\n";

  $response = $formapi->generatePDF($template_id, $data);

  if ($response->getStatus() == "processed") {
    echo "Downloading PDF to " . $pdf_filename . "...\n";
    $downloaded_pdf = fopen($response->getSubmission()->getDownloadUrl(), 'r');
    file_put_contents($pdf_filename, $downloaded_pdf);

    echo "Opening " . $pdf_filename . "...\n";
    system("type xdg-open > /dev/null 2>&1 && xdg-open '"
      . $pdf_filename . "' || open '" . $pdf_filename ."'");
  } else {
      echo "Error generating PDF!\n";
      echo $response;
  }
} catch (FormAPI\ApiException $exception) {
  echo $exception . "\n";
  echo $exception->getMessage() . "\n";
  echo $exception->getCode() . "\n";
  echo $exception->getResponseBody() . "\n";
}
