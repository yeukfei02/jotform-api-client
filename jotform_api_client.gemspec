# frozen_string_literal: true

Gem::Specification.new do |s|
  s.name = 'jotform_api_client'
  s.version     = '0.1.1'
  s.summary     = 'jotform_api_client is a ruby client for the JotForm API'
  s.description = 'jotform_api_client is a ruby client for the JotForm API'
  s.authors     = ['Donald Wu']
  s.email       = 'yeukfei02@gmail.com'
  s.files       = ['lib/jotform_api_client.rb']
  s.homepage    =
    'https://rubygems.org/gems/jotform_api_client'
  s.metadata = {
    'documentation_uri' => 'https://github.com/yeukfei02/jotform-api-client',
    'source_code_uri' => 'https://github.com/yeukfei02/jotform-api-client'
  }
  s.license = 'MIT'
  s.required_ruby_version = '>= 2.7.0'
  s.add_dependency 'faraday', '~> 2.1'
  s.add_development_dependency 'dotenv', '~> 2.7'
  s.add_development_dependency 'faker', '~> 2.19.0'
  s.add_development_dependency 'reek', '~> 6.1'
  s.add_development_dependency 'rspec', '~> 3.10.0'
  s.add_development_dependency 'rubocop', '~> 1.25'
  s.add_development_dependency 'solargraph', '~> 0.44.3'
end
