class Questionnaire < ApplicationRecord
  # Relations
  belongs_to :user
  has_and_belongs_to_many :questions
  has_many :answers, dependent: :destroy

  # Validations
  validates :user, presence: true
end

# == Schema Information
#
# Table name: questionnaires
#
#  id         :uuid             not null, primary key
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  user_id    :uuid             not null
#
# Indexes
#
#  index_questionnaires_on_user_id  (user_id)
#
# Foreign Keys
#
#  fk_rails_...  (user_id => users.id)
#
