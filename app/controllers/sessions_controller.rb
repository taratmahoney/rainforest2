class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by(email: params[:email])

    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to products_url, :notice => "You're signed in! YES!"
    else
      flash.now[:alert] = "Invalid email or password ): Try again?"
      render "new"
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to products_url, :notice=> "You've been logged out. See ya later!"
  end
end
