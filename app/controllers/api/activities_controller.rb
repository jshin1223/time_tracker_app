class Api::ActivitiesController < ApplicationController
  def index
    @activities = Activity.all 
    render 'index.json.jb'
  end

  def create
    @activity = Activity.new(
                            name: params[:name],
                            priority: params[:priority],
                            image_url: params[image_url]

                            )
    if user.save
      render json: {message: 'Activity created successfully'}, status: :created
    else
      render json: {errors: @user.errors.full_messages}, status: bad_request
    end
  end 

  def show
    @activity = Activity.find(params[:id]) 
    render 'show.json.jb'
  end

  def update
    @activity = Activity.find(params[:id])

    @activity.name = params[:name] || @activity.name
    @activity.priority = params[:priority] || @activity.priority
    @activity.image_url = params[:image_url] || @activity.image_url

    if @activity.save
      render 'show.json.jb'
    else
      render json: {errors: @activity.errors.full_messages}, status: unprocessable_entity
    end
  end 

  def destroy
    activity = Activity.find(params[:id])
    activity.destroy
    render json: {message: "Successfully Destroy Activity"}
  end

end
