class User < ApplicationRecord
  include Devise::JWT::RevocationStrategies::JTIMatcher

  rolify
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable,
         :jwt_authenticatable, jwt_revocation_strategy: self

  # Relations
  has_many :questionnaires, dependent: :destroy
  has_many :answers,        dependent: :destroy

  # Validations
  validates_uniqueness_of :email
  validates :email, :firstname, :lastname, presence: true

  # Callbacks
  after_create :assign_default_role

  def assign_default_role
    self.add_role(Role::NAMES[:candidate]) if self.roles.blank?
  end
end

# == Schema Information
#
# Table name: users
#
#  id                     :uuid             not null, primary key
#  email                  :string           default(""), not null
#  encrypted_password     :string           default(""), not null
#  firstname              :string
#  jti                    :string           not null
#  lastname               :string
#  remember_created_at    :datetime
#  reset_password_sent_at :datetime
#  reset_password_token   :string
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#
# Indexes
#
#  index_users_on_email                 (email) UNIQUE
#  index_users_on_jti                   (jti) UNIQUE
#  index_users_on_reset_password_token  (reset_password_token) UNIQUE
#
