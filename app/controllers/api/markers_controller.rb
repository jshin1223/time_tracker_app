class Api::MarkersController < ApplicationController
  def index
    @markers = Marker.all
    render 'index.json.jb'
  end

  def create
    puts "*" * 50
    p current_user
    puts "*" * 50
    # Change POST url to /activities/:activity_id/markers 

    # Step 1: Check if activity_id has a marker for this user
    @marker = Marker.find_by(
                              user_id: current_user.id,
                              activity_id: params[:activity_id],
                              end_time: nil
                              )
    # Step 2: If a marker exists, check if it has nil in the end_time
    if @marker
    # Step 4: If end_time has nil, then insert the current time into end_time attribute
      @marker.update(end_time: Time.now)
      render json: {activity_id: @marker.activity_id, open: false, marker: {}}
    else
    # Step 3: If end_time does not have nil, then create a new marker
      @marker = Marker.new(
                            user_id: current_user.id,
                            activity_id: params[:activity_id],
                            end_time: nil
                            )
      @marker.save
      render json: {activity_id: @marker.activity_id, open: true, marker: @marker}
    end
  end


  def show
    @marker = Marker.find(params[:id])
    render 'show.json.jb'
  end

  def update
    @marker = Marker.find(params[:id])
    
    @marker.user_id = params[:user_id] || @marker.user_id
    @marker.activity_id = params[:activity_id] || @marker.activity_id
    @marker.end_time = params[:end_time] || @marker.end_time
    @marker.created_at = params[:created_at] || @marker.created_at

    if @marker.save
      render 'show.json.jb'
    else
      render json: {errors: @marker.errors.full_messages}, status: unprocessable_entity
    end
  end

  def destroy
    marker = Marker.find(params[:id])
    marker.destroy
    render json: {message: "Successfully Destroyed Time-Marker"}
  end
end
