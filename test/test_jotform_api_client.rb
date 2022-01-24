# frozen_string_literal: true

require 'dotenv'
Dotenv.load

require 'minitest/autorun'
require_relative '../lib/jotform_api_client'

class TestJotFormApiClient < Minitest::Test
  def test_user
    api_key = ENV['JOTFORM_API_KEY']
    jotform_api_client = JotFormApiClient.new(api_key)
    response = jotform_api_client.user

    response_json = JSON.parse(response)
    response_code = response_json['responseCode']
    assert_equal(response_code, 200)

    message = response_json['message']
    assert_equal(message, 'success')

    content = response_json['content']['username']
    assert_equal(content, 'yeukfei02')
  end
end
