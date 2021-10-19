# == Schema Information
#
# Table name: questions
#
#  id            :uuid             not null, primary key
#  level         :integer
#  question_type :integer
#  value         :string
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#  catalog_id    :uuid             not null
#
# Indexes
#
#  index_questions_on_catalog_id  (catalog_id)
#  index_questions_on_level       (level)
#
# Foreign Keys
#
#  fk_rails_...  (catalog_id => catalogs.id)
#
FactoryBot.define do
  factory :question do
    value { "MyString" }
    question_type { "" }
    catalog { nil }
  end
end
