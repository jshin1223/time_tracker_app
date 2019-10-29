class Api::MarkersController < ApplicationController
  def index
    @markers = Marker.all
    render 'index.json.jb'
  end

  def create
    @marker = Marker.new(
                        user_id: params[:user_id],
                        activity_id: params[:activity_id],
                        end_time: params[:end_time],
                        created_at: params[:created_at]

    if user.save
      render json: {message: 'Marker created successfully'}, status: :created
    else
      render json: {errors: user.errors.full_messages}, status: :bad_request
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
