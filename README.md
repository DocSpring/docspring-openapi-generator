# FormAPI Ruby Client

This is a Ruby gem for using [FormAPI](https://formapi.io) to generate PDF documents from configured templates.


## Installation

Add the following to your `Gemfile`.

```ruby
gem "form_api"
```

Then run:

```bash
bundle install
```


## Usage

See [examples](examples/) for runnable examples with file output, error handling, etc.

```ruby
FormAPI.configure do |config|
  config.username = "YOUR_API_KEY_HERE"
  # config.debugging = true
end

formapi = FormAPI::Client.new

response = formapi.generate_pdf(
  template_id:      '<TEMPLATE_ID>',                              # ID of a template that you have configured
  test:             true,                                         # Test documents are free but watermarked
  template_data: {                                                # Data to fill in the template
    name: "foo",
    number: 42
  },
  key: "<CUSTOM_KEY>",                                            # Helps you find a PDF later
)
```

This submits a PDF request and waits for the job to finish.


## More Help

See the FormAPI documentation for more information.

Please [email us](mailto:support@formapi.io) if you need help.


## Development

The majority of the code in this repo is generated using swagger-codegen on [formapi.yaml](formapi.yaml). You can modify this file and regenerate the client using `script/generate_language ruby`.


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
