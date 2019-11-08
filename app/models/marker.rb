class Marker < ApplicationRecord
  belongs_to :user
  belongs_to :activity


  def in_seconds 
    if end_time
      end_time.to_i - created_at.to_i
    else
      0
    end
  end 


  def friendly_created_at
    created_at.strftime("%b %d, %Y")
  end

end

