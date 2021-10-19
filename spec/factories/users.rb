FactoryBot.define do
  factory :user do
    email { "user@test.com" }
    password { 'password' }
    jti { SecureRandom.uuid }
  end
end
