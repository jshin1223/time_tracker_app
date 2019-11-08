class User < ApplicationRecord
  has_secure_password
  validates :email, presence: true, uniqueness: true

  has_many :markers
  has_many :activities, through: :markers


  def activity_totals
    Activity.all.map { |activity| 
      {
        name: activity.name,
        id: activity.id,
        total_seconds: activity.in_seconds(id),
        time_data: activity.total_time(id),
        formatted_time: activity.formatted_time(id)
      }
    }
  end

end
