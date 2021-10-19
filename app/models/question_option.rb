class QuestionOption < ApplicationRecord
  # Relations
  belongs_to :question
  has_and_belongs_to_many :answers

  # Validations
  validates :question, :value, presence: true
end

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
