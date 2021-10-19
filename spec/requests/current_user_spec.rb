require 'rails_helper'

RSpec.describe "CurrentUsers", type: :request do
  describe "GET /index" do
    let(:user) { FactoryBot.create :user }

    before(:each) do
      @auth_headers = sign_in_as(user)
    end

    it "returns current_user" do
      get "/current_user", headers: @auth_headers

      expect(response).to              have_http_status(:success)
      expect(response.content_type).to eq("application/json; charset=utf-8")

      expect(json['id']).to eq(user.id)
    end

    it "fails to return current_user" do
      get "/current_user"

      expect(response).to      have_http_status(:unauthorized)
      expect(response.body).to eq("You need to sign in or sign up before continuing.")
    end
  end

end
