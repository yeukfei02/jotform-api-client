# frozen_string_literal: true

require 'dotenv'
Dotenv.load

require_relative '../lib/jotform_api_client'

describe 'JotFormApiClient' do
  let!(:jotform_api_client) do
    api_key = ENV['JOTFORM_API_KEY']

    puts "api_key = #{api_key}"

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

      content = response_json['content']
      expect(!content.nil? && !content.empty?).to be_truthy
    end
  end

  context 'user usage test' do
    it 'returns success' do
      response = jotform_api_client.user_usage

      response_json = JSON.parse(response)
      puts "response_json = #{response_json}"

      response_code = response_json['responseCode']
      expect(response_code).to eq(200)

      message = response_json['message']
      expect(message).to eq('success')

      content = response_json['content']
      expect(!content.nil? && !content.empty?).to be_truthy
    end
  end

  context 'user submissions test' do
    it 'returns success' do
      response = jotform_api_client.user_submissions

      response_json = JSON.parse(response)
      puts "response_json = #{response_json}"

      response_code = response_json['responseCode']
      expect(response_code).to eq(200)

      message = response_json['message']
      expect(message).to eq('success')

      content = response_json['content']
      expect(content.empty?).to be_truthy
    end
  end

  context 'user subusers test' do
    it 'returns success' do
      response = jotform_api_client.user_subusers

      response_json = JSON.parse(response)
      puts "response_json = #{response_json}"

      response_code = response_json['responseCode']
      expect(response_code).to eq(200)

      message = response_json['message']
      expect(message).to eq('success')

      content = response_json['content']
      expect(content.empty?).to be_truthy
    end
  end

  context 'user folders test' do
    it 'returns success' do
      response = jotform_api_client.user_folders

      response_json = JSON.parse(response)
      puts "response_json = #{response_json}"

      response_code = response_json['responseCode']
      expect(response_code).to eq(200)

      message = response_json['message']
      expect(message).to eq('success')

      content = response_json['content']
      expect(content).to eq('You do not have any folders')
    end
  end

  context 'user reports test' do
    it 'returns success' do
      response = jotform_api_client.user_reports

      response_json = JSON.parse(response)
      puts "response_json = #{response_json}"

      response_code = response_json['responseCode']
      expect(response_code).to eq(200)

      message = response_json['message']
      expect(message).to eq('success')

      content = response_json['content']
      expect(content.empty?).to be_truthy
    end
  end
end
