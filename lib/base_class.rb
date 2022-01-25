# frozen_string_literal: true

# BaseClass
class BaseClass
  def initialize(api_key = '')
    @api_key = api_key
    @root_url = 'https://api.jotform.com'
  end

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
