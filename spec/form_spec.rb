# frozen_string_literal: true

require 'dotenv'
Dotenv.load

require 'faker'
require_relative '../lib/jotform_api_client'

describe 'form test' do
  let!(:jotform_api_client) do
    api_key = ENV['JOTFORM_API_KEY']
    JotFormApiClient.new(api_key)
  end

  # context 'create form test' do
  #   before(:each) do
  #     params = {
  #       'questions[1][type]': Faker::Lorem.word,
  #       'questions[1][text]': Faker::Lorem.word,
  #       'questions[1][order]': Faker::Lorem.word,
  #       'questions[1][name]': Faker::Lorem.word,
  #       'properties[title]': Faker::Lorem.word
  #     }
  #     response = jotform_api_client.create_form(params)

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

  # context 'get form by id test' do
  #   before(:each) do
  #     id = '30693660548966'
  #     response = jotform_api_client.get_form_by_id(id)

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

  # context 'get form questions test' do
  #   before(:each) do
  #     id = '30693660548966'
  #     response = jotform_api_client.get_form_questions(id)

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

  # context 'get form question test' do
  #   before(:each) do
  #     form_id = '30693660548966'
  #     question_id = '30693660548966'
  #     response = jotform_api_client.get_form_question(form_id, question_id)

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

  #   context 'get form properties test' do
  #     before(:each) do
  #       form_id = '30693660548966'
  #       response = jotform_api_client.get_form_properties(form_id)

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

  # context 'get form property test' do
  #   before(:each) do
  #     form_id = '30693660548966'
  #     property_key = ''
  #     response = jotform_api_client.get_form_property(form_id, property_key)

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

  #   context 'get form submissions test' do
  #     before(:each) do
  #       form_id = '30693660548966'
  #       params = {}
  #       response = jotform_api_client.get_form_submissions(form_id, params)

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

  # context 'get form files test' do
  #   before(:each) do
  #     form_id = '30693660548966'
  #     response = jotform_api_client.get_form_files(form_id)

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

  # context 'get form webhooks test' do
  #     before(:each) do
  #       form_id = '30693660548966'
  #       response = jotform_api_client.get_form_webhooks(form_id)

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

  # context 'create form webhooks test' do
  #     before(:each) do
  #       form_id = '30693660548966'
  #       params = {
  #         webhookURL: 'http://my.web.tld/handle.php'
  #       }
  #       response = jotform_api_client.create_form_webhooks(form_id, params)

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

  # context 'create form submissions test' do
  #       before(:each) do
  #         form_id = '30693660548966'
  #         params = {
  #           'submission[1]': ''
  #         }
  #         response = jotform_api_client.create_form_submissions(form_id, params)

  #         @response_json = JSON.parse(response)
  #         puts "@response_json = #{@response_json}"
  #       end

  #       it 'returns success' do
  #         response_code = @response_json['responseCode']
  #         expect(response_code).to eq(200)

  #         message = @response_json['message']
  #         expect(message).to eq('success')

  #         content = @response_json['content']
  #         expect(!content.nil? && !content.empty?).to be_truthy
  #       end
  #     end
end
