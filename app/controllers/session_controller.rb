class SessionController < ApplicationController
  layout "login_signup", only: [:new]

  def new
    if logged_in?
      redirect_to '/'
    end
  end

  def create
    user = User.find_by(email: params[:email])
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to '/'
    else
      render :new
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to '/login'
  end

end
