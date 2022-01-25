# frozen_string_literal: true

require 'faraday'

# JotFormApiClient
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

  def user_submissions
    conn = Faraday.new(
      url: @root_url,
      headers: { 'Content-Type': 'application/json' }
    )
    response = conn.get('/user/submissions') do |req|
      req.params['apiKey'] = @api_key
    end

    response_body = {}
    response_body = response.body if response.status == 200

    response_body
  end

  def user_subusers
    conn = Faraday.new(
      url: @root_url,
      headers: { 'Content-Type': 'application/json' }
    )
    response = conn.get('/user/subusers') do |req|
      req.params['apiKey'] = @api_key
    end

    response_body = {}
    response_body = response.body if response.status == 200

    response_body
  end

  def user_folders
    conn = Faraday.new(
      url: @root_url,
      headers: { 'Content-Type': 'application/json' }
    )
    response = conn.get('/user/folders') do |req|
      req.params['apiKey'] = @api_key
    end

    response_body = {}
    response_body = response.body if response.status == 200

    response_body
  end

  def user_reports
    conn = Faraday.new(
      url: @root_url,
      headers: { 'Content-Type': 'application/json' }
    )
    response = conn.get('/user/reports') do |req|
      req.params['apiKey'] = @api_key
    end

    response_body = {}
    response_body = response.body if response.status == 200

    response_body
  end

  def user_settings
    conn = Faraday.new(
      url: @root_url,
      headers: { 'Content-Type': 'application/json' }
    )
    response = conn.get('/user/settings') do |req|
      req.params['apiKey'] = @api_key
    end

    response_body = {}
    response_body = response.body if response.status == 200

    response_body
  end

  def user_history
    conn = Faraday.new(
      url: @root_url,
      headers: { 'Content-Type': 'application/json' }
    )
    response = conn.get('/user/history') do |req|
      req.params['apiKey'] = @api_key
    end

    response_body = {}
    response_body = response.body if response.status == 200

    response_body
  end

  def user_forms
    conn = Faraday.new(
      url: @root_url,
      headers: { 'Content-Type': 'application/json' }
    )
    response = conn.get('/user/forms') do |req|
      req.params['apiKey'] = @api_key
    end

    response_body = {}
    response_body = response.body if response.status == 200

    response_body
  end
end
