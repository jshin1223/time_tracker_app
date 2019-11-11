class User < ApplicationRecord
  has_secure_password
  validates :email, presence: true, uniqueness: true

  has_many :markers
  has_many :activities, through: :markers


  def activity_totals
    Activity.all.map { |activity| 
      {
        id: activity.id,
        name: activity.name,
        image_url: activity.image_url,
        total_seconds: activity.in_seconds(id),
        time_data: activity.total_time(id),
        formatted_time: activity.formatted_time(id)
      }
    }

  end


  

end
