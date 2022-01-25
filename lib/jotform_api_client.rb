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

  def user_submissions(params = {})
    response = submit_get_request('/user/submissions', params)

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

  def user_history(params = {})
    response = submit_get_request('/user/history', params)

    response_body = {}
    response_body = response.body if response.status == 200

    response_body
  end

  def user_forms(params = {})
    response = submit_get_request('/user/forms', params)

    response_body = {}
    response_body = response.body if response.status == 200

    response_body
  end

  def create_form(params = {})
    response = submit_post_request('/form', params)

    response_body = {}
    response_body = response.body if response.status == 200

    response_body
  end

  def get_form_by_id(id = '')
    response = submit_get_request("/form/#{id}")

    response_body = {}
    response_body = response.body if response.status == 200

    response_body
  end

  private

  def request_base
    Faraday.new(
      url: @root_url,
      headers: { 'Content-Type': 'application/json' }
    )
  end

  def submit_get_request(url, params = {})
    conn = request_base

    if !params.nil? && !params.empty?
      conn.get(url) do |req|
        req.params['apiKey'] = @api_key
        req.params = req.params.merge(params)
      end
    else
      conn.get(url) do |req|
        req.params['apiKey'] = @api_key
      end
    end
  end

  def submit_post_request(url, params = {})
    conn = request_base

    if !params.nil? && !params.empty?
      conn.post(url) do |req|
        req.body = { apiKey: @api_key }
        req.body = req.body.merge(params).to_json
      end
    else
      conn.post(url) do |req|
        req.body = { apiKey: @api_key }.to_json
      end
    end
  end
end
