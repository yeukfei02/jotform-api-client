# frozen_string_literal: true

require 'dotenv'
Dotenv.load

require 'faker'
require_relative '../lib/jotform_api_client'

describe 'JotFormApiClient' do
  let!(:jotform_api_client) do
    api_key = ENV['JOTFORM_API_KEY']
    JotFormApiClient.new(api_key)
  end

  context 'user test' do
    before(:each) do
      response = jotform_api_client.user

      @@response_json = JSON.parse(response)
      puts "@response_json = #{@@response_json}"
    end

    it 'returns success' do
      response_code = @@response_json['responseCode']
      expect(response_code).to eq(200)

      message = @@response_json['message']
      expect(message).to eq('success')

      content = @@response_json['content']
      expect(!content.nil? && !content.empty?).to be_truthy
    end
  end

  context 'user usage test' do
    before(:each) do
      response = jotform_api_client.user_usage

      @response_json = JSON.parse(response)
      puts "@response_json = #{@response_json}"
    end

    it 'returns success' do
      response_code = @response_json['responseCode']
      expect(response_code).to eq(200)

      message = @response_json['message']
      expect(message).to eq('success')

      content = @response_json['content']
      expect(!content.nil? && !content.empty?).to be_truthy
    end
  end

  context 'user submissions test' do
    before(:each) do
      response = jotform_api_client.user_submissions

      @response_json = JSON.parse(response)
      puts "@response_json = #{@response_json}"
    end

    it 'returns success' do
      response_code = @response_json['responseCode']
      expect(response_code).to eq(200)

      message = @response_json['message']
      expect(message).to eq('success')

      content = @response_json['content']
      expect(content.empty?).to be_truthy
    end
  end

  context 'user subusers test' do
    before(:each) do
      response = jotform_api_client.user_subusers

      @response_json = JSON.parse(response)
      puts "@response_json = #{@response_json}"
    end

    it 'returns success' do
      response_code = @response_json['responseCode']
      expect(response_code).to eq(200)

      message = @response_json['message']
      expect(message).to eq('success')

      content = @response_json['content']
      expect(content.empty?).to be_truthy
    end
  end

  context 'user folders test' do
    before(:each) do
      response = jotform_api_client.user_folders

      @response_json = JSON.parse(response)
      puts "@response_json = #{@response_json}"
    end

    it 'returns success' do
      response_code = @response_json['responseCode']
      expect(response_code).to eq(200)

      message = @response_json['message']
      expect(message).to eq('success')

      content = @response_json['content']
      expect(content).to eq('You do not have any folders')
    end
  end

  context 'user reports test' do
    before(:each) do
      response = jotform_api_client.user_reports

      @response_json = JSON.parse(response)
      puts "@response_json = #{@response_json}"
    end

    it 'returns success' do
      response_code = @response_json['responseCode']
      expect(response_code).to eq(200)

      message = @response_json['message']
      expect(message).to eq('success')

      content = @response_json['content']
      expect(content.empty?).to be_truthy
    end
  end

  context 'user settings test' do
    before(:each) do
      response = jotform_api_client.user_settings

      @response_json = JSON.parse(response)
      puts "@response_json = #{@response_json}"
    end

    it 'returns success' do
      response_code = @response_json['responseCode']
      expect(response_code).to eq(200)

      message = @response_json['message']
      expect(message).to eq('success')

      content = @response_json['content']
      expect(!content.nil? && !content.empty?).to be_truthy
    end
  end

  context 'user history test' do
    before(:each) do
      response = jotform_api_client.user_history

      @response_json = JSON.parse(response)
      puts "@response_json = #{@response_json}"
    end

    it 'returns success' do
      response_code = @response_json['responseCode']
      expect(response_code).to eq(200)

      message = @response_json['message']
      expect(message).to eq('success')

      content = @response_json['content']
      expect(!content.nil? && !content.empty?).to be_truthy
    end
  end

  context 'user forms test' do
    before(:each) do
      response = jotform_api_client.user_forms

      @response_json = JSON.parse(response)
      puts "@response_json = #{@response_json}"
    end

    it 'returns success' do
      response_code = @response_json['responseCode']
      expect(response_code).to eq(200)

      message = @response_json['message']
      expect(message).to eq('success')

      content = @response_json['content']
      expect(!content.nil? && !content.empty?).to be_truthy
    end
  end

  context 'create form test' do
    before(:each) do
      params = {
        'questions[1][type]': Faker::Lorem.word,
        'questions[1][text]': Faker::Lorem.word,
        'questions[1][order]': Faker::Lorem.word,
        'questions[1][name]': Faker::Lorem.word,
        'properties[title]': Faker::Lorem.word
      }
      response = jotform_api_client.create_form(params)

      @response_json = JSON.parse(response)
      puts "@response_json = #{@response_json}"
    end

    it 'returns success' do
      response_code = @response_json['responseCode']
      expect(response_code).to eq(200)

      message = @response_json['message']
      expect(message).to eq('success')

      content = @response_json['content']
      expect(!content.nil? && !content.empty?).to be_truthy
    end
  end

  context 'get form by id test' do
    before(:each) do
      id = '30693660548966'
      response = jotform_api_client.get_form_by_id(id)

      @response_json = JSON.parse(response)
      puts "@response_json = #{@response_json}"
    end

    it 'returns success' do
      response_code = @response_json['responseCode']
      expect(response_code).to eq(200)

      message = @response_json['message']
      expect(message).to eq('success')

      content = @response_json['content']
      expect(!content.nil? && !content.empty?).to be_truthy
    end
  end
end
