class Answer < ApplicationRecord
  # Relations
  belongs_to :user
  belongs_to :questionnaire
  belongs_to :question
  has_and_belongs_to_many :question_options

  # Validations
  validates :user, :questionnaire, :question, presence: true
end

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
