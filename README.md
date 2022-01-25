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
user = jotform_api_client.user
```

## get user usage

```ruby
user_usage = jotform_api_client.user_usage
```

## get user submissions

```ruby
user_submissions = jotform_api_client.user_submissions
```

## get user subusers

```ruby
user_subusers = jotform_api_client.user_subusers
```

## get user folders

```ruby
user_folders = jotform_api_client.user_folders
```

## get user reports

```ruby
user_reports = jotform_api_client.user_reports
```

## get user settings

```ruby
user_settings = jotform_api_client.user_settings
```

## get user history

```ruby
user_history = jotform_api_client.user_history
```

## get user forms

```ruby
user_forms = jotform_api_client.user_forms
```

## create form

```ruby
# your params
params = {}
create_form = jotform_api_client.create_form(params)
```

## get form by id

```ruby
# your form id
id = ''
get_form_by_id = jotform_api_client.get_form_by_id(id)
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
