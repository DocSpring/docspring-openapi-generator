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

try {
  $create_submission_batch_body = json_encode(array(
    [
      'data' => [
        "first_name" => 'John',
        "last_name" => 'Smith',
        "favorite_color" => 'Green'
      ]
    ],
    [
      'data' => [
        "first_name" => 'Jane',
        "last_name" => 'Doe',
        "favorite_color" => 'Blue'
      ]
    ]
  ));

  echo "Generating PDFs...\n";

  $responses = $formapi->batchGeneratePDF($template_id, $create_submission_batch_body);
  print_r($responses);

} catch (FormAPI\ApiException $exception) {
  echo $exception . "\n";
  echo $exception->getMessage() . "\n";
  echo $exception->getCode() . "\n";
  echo $exception->getResponseBody() . "\n";
}
