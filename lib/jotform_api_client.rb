# frozen_string_literal: true

require 'faraday'

# JotFormApiClient
class JotFormApiClient
  def initialize(api_key = '')
    @api_key = api_key
    @root_url = 'https://api.jotform.com'
  end

  def user
    response = submit_get_request('/user')

    response_body = {}
    response_body = response.body if response.status == 200

    response_body
  end

  def user_usage
    response = submit_get_request('/user/usage')

    response_body = {}
    response_body = response.body if response.status == 200

    response_body
  end

  def user_submissions
    response = submit_get_request('/user/submissions')

    response_body = {}
    response_body = response.body if response.status == 200

    response_body
  end

  def user_subusers
    response = submit_get_request('/user/subusers')

    response_body = {}
    response_body = response.body if response.status == 200

    response_body
  end

  def user_folders
    response = submit_get_request('/user/folders')

    response_body = {}
    response_body = response.body if response.status == 200

    response_body
  end

  def user_reports
    response = submit_get_request('/user/reports')

    response_body = {}
    response_body = response.body if response.status == 200

    response_body
  end

  def user_settings
    response = submit_get_request('/user/settings')

    response_body = {}
    response_body = response.body if response.status == 200

    response_body
  end

  def user_history
    response = submit_get_request('/user/history')

    response_body = {}
    response_body = response.body if response.status == 200

    response_body
  end

  def user_forms
    response = submit_get_request('/user/forms')

    response_body = {}
    response_body = response.body if response.status == 200

    response_body
  end

  private

  def submit_get_request(url)
    conn = Faraday.new(
      url: @root_url,
      headers: { 'Content-Type': 'application/json' }
    )
    conn.get(url) do |req|
      req.params['apiKey'] = @api_key
    end
  end
end
