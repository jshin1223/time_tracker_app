class Activity < ApplicationRecord
  has_many :markers
  has_many :users, through: :markers
end
