# frozen_string_literal: true

require 'dotenv'
Dotenv.load

require 'faker'
require_relative '../lib/jotform_api_client'

describe 'submission test' do
  let!(:jotform_api_client) do
    api_key = ENV['JOTFORM_API_KEY']
    JotFormApiClient.new(api_key)
  end

  #   context 'submission test' do
  #     before(:each) do
  #       submission_id = '235194815571509962'
  #       response = jotform_api_client.get_submission(submission_id)

  #       @response_json = JSON.parse(response)
  #       puts "@response_json = #{@response_json}"
  #     end

  #     it 'returns success' do
  #       response_code = @response_json['responseCode']
  #       expect(response_code).to eq(200)

  #       message = @response_json['message']
  #       expect(message).to eq('success')

  #       content = @response_json['content']
  #       expect(!content.nil? && !content.empty?).to be_truthy
  #     end
  #   end
end
