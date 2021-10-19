require 'rails_helper'

RSpec.describe "Users::Registrations", type: :request do
  describe "GET /create" do
    it 'signs up user' do
      params = {
        user: {
          email:    'registration@test.com',
          password: '12345678'
        }
      }.to_json

      post "/signup", headers: json_content_type_header, params: params

      expect(response).to                          have_http_status(:success)
      expect(json[:data]).to                       have_key(:id)
      expect(response.headers['Authorization']).to include("Bearer")
    end

    it 'fails to signup user' do
      wrong_params = {
        user: {
          email:    '',
          password: ''
        }
      }.to_json

      post "/signup", headers: json_content_type_header, params: wrong_params

      expect(response).to have_http_status(:unprocessable_entity)
    end
  end
end
