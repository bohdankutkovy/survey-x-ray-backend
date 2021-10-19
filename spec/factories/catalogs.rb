# == Schema Information
#
# Table name: catalogs
#
#  id              :uuid             not null, primary key
#  name            :string
#  questions_count :integer
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#
FactoryBot.define do
  factory :catalog do
    name { "MyString" }
    questions_count { 1 }
  end
end
