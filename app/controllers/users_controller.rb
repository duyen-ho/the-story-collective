class UsersController < ApplicationController

  def new
  end

  def create
    user = User.new
    user.name = params[:name]
    user.email = params[:email]
    user.password= params[:password]
    user.description = params[:description]
    user.photo_url = params[:photo_url]
    if user.save
      session[:user_id] = user.id
      redirect_to '/'
    else
      @errors = user.errors.messages
      render :new
    end
  end

  def show
    @user = User.find(params[:id])

    @parts = Part.where(user_id: params[:id]).order(:created_at)

  end

end
