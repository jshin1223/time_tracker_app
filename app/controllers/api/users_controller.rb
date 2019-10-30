class Api::UsersController < ApplicationController
  def index
    @users = User.all
    render 'index.json.jb'
  end

  def create
      user = User.new(
        name: params[:name],
        email: params[:email],
        password: params[:password],
        password_confirmation: params[:password_confirmation]
      )

      if user.save
        render json: {message: 'User created successfully'}, status: :created
      else
        render json: {errors: user.errors.full_messages}, status: :bad_request
      end
    end


  def show
    @user = User.find(params[:id])
    render 'show.json.jb'
  end

  def update
    @user = User.find(params[:id])

    @user.name = params[:name] || @user.name
    @user.email = params[:email] || @user.email
    @user.password_digest = params[:password_digest] || @user.password_digest

    if @user.save
      render 'show.json.jb'
    else
      render json: {errors: @user.errors.full_messages}, status: unprocessable_entity
    end
  end 

  def destroy
    user = User.find(params[:id])
    user.destroy
    render json: {message: "Successfully Destroyed User"}
  end 
end

