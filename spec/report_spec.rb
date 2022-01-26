# frozen_string_literal: true

require 'dotenv'
Dotenv.load

require 'faker'
require_relative '../lib/jotform_api_client'

describe 'report test' do
  let!(:jotform_api_client) do
    api_key = ENV['JOTFORM_API_KEY']
    JotFormApiClient.new(api_key)
  end

  # context 'report test' do
  #   before(:each) do
  #     report_id = '31753290421044'
  #     response = jotform_api_client.get_report(report_id)

  #     @response_json = JSON.parse(response)
  #     puts "@response_json = #{@response_json}"
  #   end

  #   it 'returns success' do
  #     response_code = @response_json['responseCode']
  #     expect(response_code).to eq(200)

  #     message = @response_json['message']
  #     expect(message).to eq('success')

  #     content = @response_json['content']
  #     expect(!content.nil? && !content.empty?).to be_truthy
  #   end
  # end
end
