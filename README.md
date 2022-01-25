# jotform-api-client

jotform-api-client

## How to use

Refer to [Jotform API](https://api.jotform.com/docs/) for request and response

```ruby
require 'jotform_api_client'

api_key = <your-jotform-api-key>
jotform_api_client = JotFormApiClient.new(api_key)
```

## get user

```ruby
jotform_api_client = JotFormApiClient.new(api_key)
user = jotform_api_client.user
```

## Requirement

- install ruby (v2.7)
- install gem
- install bundle

## Testing and run

```zsh
// install ruby dependencies
$ bundle install

// build executable
$ gem build jotform_api_client.gemspec

// remove gem version in rubygems
$ gem yank jotform_api_client -v <version>

// publish new version to rubygems
$ gem push jotform_api_client-<version>.gem

// run test
$ bundle exec rspec

// rubocop
$ rubocop --auto-correct
$ rubocop -A

// reek
$ reek
```
