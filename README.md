# jotform-api-client

jotform-api-client

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
$ rake test

// rubocop
$ rubocop --auto-correct
$ rubocop -A

// reek
$ reek
```
