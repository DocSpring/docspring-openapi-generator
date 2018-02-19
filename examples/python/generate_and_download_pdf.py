#!/usr/bin/env python
#
# This example demonstrates generating a PDF from a preconfigured template,
# and waiting for the PDF to be processed.
#
# You can run this example with: python ./examples/generate_and_download_pdf.py

import form_api
import shutil
import sys
import os
if sys.version_info > (3, 0):
  import urllib.request
else:
  import urllib


fa_client = form_api.Client()

# These are test values that you can use to generate a real PDF
fa_client.api_client.configuration.username = "yRaaR9JmTPtGX7EN"
fa_client.api_client.configuration.password = "IB3TRkSdm4f2BdtU_D3YgxjdMB7l-r2fOgvxD1Yzwec"
# fa_client.api_client.configuration.debug = True
template_id = "6zz3dYRYM67fxMXA"

try:
  submission = fa_client.generate_pdf({
    "template_id": template_id,       # ID of a template that you have configured
    "test": True,                     # test documents are free but watermarked
    "data": {                         # Data to render in the template
      "first_name": "John",
      "last_name": "Smith",
      "favorite_color": "Green",
    },
    "metadata": {                     # Custom data to include in the request, for your own purposes
      "user_id": 123,
    }
  })

  print(submission)

  # Download the PDF to a file
  if sys.version_info > (3, 0):
    # Python 3
    urllib.request.urlretrieve(submission.download_url, "/tmp/formapi-python.pdf")
  else:
    # Python 2
    urllib.urlretrieve(submission.download_url, "/tmp/formapi-python.pdf")

  print("Downloaded PDF to /tmp/formapi-python.pdf")

  # Open the downloaded file on Mac or Linux
  os.system("type xdg-open > /dev/null 2>&1 && xdg-open /tmp/formapi-python.pdf || open /tmp/formapi-python.pdf")


except form_api.rest.ApiException as error:
  print(error)
  print(error.message)
  print(error.code)
  print(error.response_body)
