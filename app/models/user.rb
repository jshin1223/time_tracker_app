class User < ApplicationRecord
  has_many :markers
  has_many :activities, through: :markers


  has_secure_password
  validates :email, presence: true, uniqueness: true


end
