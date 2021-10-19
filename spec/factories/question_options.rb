# == Schema Information
#
# Table name: question_options
#
#  id          :uuid             not null, primary key
#  correct     :boolean          default(FALSE)
#  value       :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  question_id :uuid             not null
#
# Indexes
#
#  index_question_options_on_question_id  (question_id)
#
# Foreign Keys
#
#  fk_rails_...  (question_id => questions.id)
#
FactoryBot.define do
  factory :question_option do
    correct { false }
    value { "MyString" }
    question { nil }
  end
end
