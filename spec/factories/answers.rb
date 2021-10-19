# == Schema Information
#
# Table name: answers
#
#  id               :uuid             not null, primary key
#  value            :text
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#  question_id      :uuid             not null
#  questionnaire_id :uuid             not null
#  user_id          :uuid             not null
#
# Indexes
#
#  index_answers_on_question_id       (question_id)
#  index_answers_on_questionnaire_id  (questionnaire_id)
#  index_answers_on_user_id           (user_id)
#
# Foreign Keys
#
#  fk_rails_...  (question_id => questions.id)
#  fk_rails_...  (questionnaire_id => questionnaires.id)
#  fk_rails_...  (user_id => users.id)
#
FactoryBot.define do
  factory :answer do
    value { "MyText" }
    user { nil }
    questionnaire { nil }
    question { nil }
  end
end
