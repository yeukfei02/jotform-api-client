# frozen_string_literal: true

require 'dotenv'
Dotenv.load

require_relative '../lib/jotform_api_client'

describe 'JotFormApiClient' do
  let!(:jotform_api_client) do
    api_key = ENV['JOTFORM_API_KEY']
    JotFormApiClient.new(api_key)
  end

  context 'user test' do
    it 'returns success' do
      response = jotform_api_client.user

      response_json = JSON.parse(response)
      puts "response_json = #{response_json}"

      response_code = response_json['responseCode']
      expect(response_code).to eq(200)

      message = response_json['message']
      expect(message).to eq('success')

      content = response_json['content']['username']
      expect(content).to eq('yeukfei02')
    end
  end
end
