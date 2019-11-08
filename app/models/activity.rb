class Activity < ApplicationRecord
  has_many :markers
  has_many :users, through: :markers


  def in_seconds(user_id)
    markers.where(user_id: user_id).sum { |marker| marker.in_seconds }
  end 

  def total_time(user_id)
    total_seconds = in_seconds(user_id)

    hours = total_seconds / 3600
    left_over_seconds = total_seconds % 3600

    minutes = left_over_seconds / 60
    seconds = left_over_seconds % 60

    {hours: hours, minutes: minutes, seconds: seconds}
  end

  def formatted_time(user_id)
    time_hash = total_time(user_id)
    time_string = ""

    time_string += "#{time_hash[:hours]} #{'Hour'.pluralize(time_hash[:hours])}" if time_hash[:hours] > 0
    time_string += ", " if time_hash[:hours] > 0 && time_hash[:minutes] > 0
    time_string += "#{time_hash[:minutes]} #{'Minute'.pluralize(time_hash[:minutes])}" if time_hash[:minutes] > 0
    time_string += ", " if time_hash[:seconds] > 0 && time_hash[:minutes] > 0
    time_string += "#{time_hash[:seconds]} #{'Second'.pluralize(time_hash[:seconds])}" if time_hash[:seconds] > 0

    time_string = "0 seconds" if time_string == ""

    time_string
  end

end
