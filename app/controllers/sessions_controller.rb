class SessionsController < ApplicationController
  skip_before_action :check_user_logged_in, only: [:new, :create]

  def create
    email = auth_hash['info']['email']
    user = User.where(email: email.to_s).first_or_create

    if user
      session[:user_id] = user.id
      redirect_to posts_path, notice: "Signed in!"
    else
      render :failed
    end
  end

  def new
  end

  def destroy
    session.delete :user_id
    redirect_to root_url, notice: "Signed out!"
  end

protected

  def auth_hash
    request.env['omniauth.auth']
  end
end