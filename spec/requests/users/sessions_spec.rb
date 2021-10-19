require 'rails_helper'

RSpec.describe "Users::Sessions", type: :request do
  describe "GET /create" do
    let(:user) { FactoryBot.create(:user) }

    it 'logs in user' do
      params = {
        user: {
          email:    user.email,
          password: user.password
        }
      }.to_json

      post '/login', headers: json_content_type_header, params: params

      expect(response).to                          have_http_status(:success)
      expect(json[:data]).to                       have_key(:id)
      expect(response.headers['Authorization']).to include('Bearer')
    end
  end

  describe "GET /destroy" do
    let(:user) { FactoryBot.create(:user) }

    it 'logs out user' do
      @auth_headers = sign_in_as(user)

      delete '/logout', headers: @auth_headers

      expect(response).to                          have_http_status(:success)
      expect(json[:message]).to                    eq('logged out successfully')
      expect(response.headers).not_to              have_key('Authorization')
    end

    it 'fails to log out user' do
      delete '/logout'

      expect(response).to                          have_http_status(:unauthorized)
      expect(json[:message]).to                    eq("Couldn't find an active session.")
    end
  end
end
