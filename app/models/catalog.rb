class Catalog < ApplicationRecord
  # Relations
  has_many :questions, dependent: :destroy

  # Validations
  validates :name, presence: true
end

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
