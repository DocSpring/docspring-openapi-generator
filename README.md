# FormAPI Ruby Client

[![Build Status](https://travis-ci.org/FormAPI/formapi-ruby.svg?branch=master)](https://travis-ci.org/FormAPI/formapi-ruby)

This is a Ruby gem for using [FormAPI](https://formapi.io) to generate PDF documents from configured templates.

## Supported Ruby Versions

The `form_api` gem supports Ruby >= `1.9.3`. We run our CI tests on:

* `1.9.3`
* `2.1.10`
* `2.4.2`

## Installation

```bash
gem install form_api
```

Or add the following to your `Gemfile`.

```ruby
gem "form_api"
```

Then run:

```bash
bundle install
```


## Usage

See [examples](examples/) for some runnable examples.

```ruby
FormAPI.configure do |config|
  config.username = "YOUR_API_TOKEN_ID"
  config.password = "YOUR_API_TOKEN_SECRET"
end

formapi = FormAPI::Client.new

response = formapi.generate_pdf(
  template_id: 'YOUR_TEMPLATE_ID',   # ID of a template that you have configured
  test: true,                        # Test documents are free but watermarked
  wait: true,                        # Wait for the PDF to be processed   (default: true)
  data: {                            # Data to render in the template
    name: "foo",
    number: 42
  },
  metadata: {                        # Custom data to include in the request, for your own purposes
    user_id: 123
  }
)

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
8. Verify package release at https://rubygems.org/gems/formapi
9. Refresh documentation on formapi.io


## Version Policy

This library follows [Semantic Versioning 2.0.0](http://semver.org).
