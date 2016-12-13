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
      redirect_to '/'
    else
      render :new
    end

  end

end
