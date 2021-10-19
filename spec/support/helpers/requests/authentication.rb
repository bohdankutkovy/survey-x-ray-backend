module Helpers
  module Requests
    module Authentication
      def sign_in_as(user)
        headers = { 'Accept' => 'application/json', 'Content-Type' => 'application/json' }
        # This will add a valid token for `user` in the `Authorization` header
        Devise::JWT::TestHelpers.auth_headers(headers, user)
      end
    end
  end
end