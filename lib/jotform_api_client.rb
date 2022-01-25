# frozen_string_literal: true

require 'faraday'

class JotFormApiClient
  def initialize(api_key = '')
    @api_key = api_key
    @root_url = 'https://api.jotform.com'
  end

  def user
    conn = Faraday.new(
      url: @root_url,
      headers: { 'Content-Type': 'application/json' }
    )
    response = conn.get('/user') do |req|
      req.params['apiKey'] = @api_key
    end

    response_body = {}
    response_body = response.body if response.status == 200

    response_body
  end

  def user_usage
    conn = Faraday.new(
      url: @root_url,
      headers: { 'Content-Type': 'application/json' }
    )
    response = conn.get('/user/usage') do |req|
      req.params['apiKey'] = @api_key
    end

    response_body = {}
    response_body = response.body if response.status == 200

    response_body
  end
end
