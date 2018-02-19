# FormAPI Python Client

This is a Python client library for the [FormAPI](https://formapi.io) service. FormAPI generates PDF documents from configured templates.


## Installation

```bash
pip install --upgrade form-api
```

or

```bash
easy_install --upgrade form-api
```

If you're not using [`virtualenv`](http://www.virtualenv.org/), you may have to prefix these commands with `sudo`.


## Usage

See [examples](examples/) for some runnable examples.

```python
import form_api

client = form_api.Client()
client.api_client.configuration.username = "YOUR_API_TOKEN_ID"
client.api_client.configuration.password = "YOUR_API_TOKEN_SECRET"

response = client.generate_pdf({
  "template_id": "YOUR_TEMPLATE_ID",      # ID of a template that you have configured
  "test": True,                           # test documents are free but watermarked
  "wait": True,                           # Wait for the PDF to be processed   (default: true)
  "data": {                               # Data to render in the template
    name: "foo",
    number: 42
  },
  "metadata": {                           # Custom data to include in the request, for your own purposes
    "user_id": 123,
  }
})

# {
#   status: "success",
#   submission: {
#     id: "bymRSZYTKDnd6jfY",
#     test: true,
#     state: "processed",
#     download_url: "https://..."
#   }
# }
```

This submits a PDF request and waits for the job to finish.


## More Help

See the [FormAPI documentation](https://formapi.io/docs) for more information.

Please [email us](mailto:support@formapi.io) if you need any help.


## Development

The majority of the code in this repo is generated using swagger-codegen.
You can modify this file and regenerate the client using `scripts/generate`.


## Release Process

1. Pull latest master
2. Merge feature branch(es) into master
3. `script/test`
4. Increment version in code:
  - `swagger-config.json`
  - `lib/formapi/version.rb`
5. Update [CHANGELOG.md](CHANGELOG.md)
6. Commit "Release version vX.Y.Z"
7. `rake release`
8. Verify package release at https://pypi.python.org/pypi/form-api
9. Refresh documentation on formapi.io


## Version Policy

This library follows [Semantic Versioning 2.0.0](http://semver.org).
