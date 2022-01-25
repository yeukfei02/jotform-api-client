# frozen_string_literal: true

require 'faraday'
require_relative './base_class'

# JotFormApiClient
class JotFormApiClient < BaseClass
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

  def get_form_questions(id = '')
    response = submit_get_request("/form/#{id}/questions")

    response_body = {}
    response_body = response.body if response.status == 200

    response_body
  end

  def get_form_question(form_id = '', question_id = '')
    response = submit_get_request("/form/#{form_id}/question/#{question_id}")

    response_body = {}
    response_body = response.body if response.status == 200

    response_body
  end

  def get_form_properties(form_id = '')
    response = submit_get_request("/form/#{form_id}/properties")

    response_body = {}
    response_body = response.body if response.status == 200

    response_body
  end

  def get_form_property(form_id = '', property_key = '')
    response = submit_get_request("/form/#{form_id}/properties/#{property_key}")

    response_body = {}
    response_body = response.body if response.status == 200

    response_body
  end

  def get_form_submissions(form_id = '', params = {})
    response = submit_get_request("/form/#{form_id}/submissions", params)

    response_body = {}
    response_body = response.body if response.status == 200

    response_body
  end

  def get_form_files(form_id = '')
    response = submit_get_request("/form/#{form_id}/files")

    response_body = {}
    response_body = response.body if response.status == 200

    response_body
  end

  def get_form_webhooks(form_id = '')
    response = submit_get_request("/form/#{form_id}/webhooks")

    response_body = {}
    response_body = response.body if response.status == 200

    response_body
  end
end
