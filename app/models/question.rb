class Question < ApplicationRecord
  # Relations
  belongs_to :catalog, counter_cache: true
  has_and_belongs_to_many :questionnaires
  has_many :question_options, dependent: :destroy
  has_many :answers, dependent: :destroy

  # Enums
  enum question_type: {
    radio_button: 0,
    checkbox:     1,
    textfield:    2
  }

  enum level: {
    junior: 0,
    middle: 1,
    senior: 2
  }

  # Validations
  validates :value, :question_type, :catalog, :level, presence: true
end

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
