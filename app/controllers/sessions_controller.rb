class SessionsController < ApplicationController
  def create
    email = auth_hash['info']['email']
    user = User.where(email: email.to_s).first_or_create

    if user
      session[:user] = user.id
      redirect_to posts_path
    else
      render :failed
    end
  end

  def new
  end

  def destroy
    session.delete :user

    redirect_to '/'
  end

protected

  def auth_hash
    request.env['omniauth.auth']
  end
end