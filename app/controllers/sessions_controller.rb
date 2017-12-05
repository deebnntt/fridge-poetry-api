class SessionsController < ApplicationController

  # skip_before_action :authorized, only: [:create] #don't need to check if they're authorized on sign in

  def create
    @user = User.find_by(username: params[:username])
    if @user && @user.authenticate(params[:password])
      payload = {user_id: @user.id}
      token = JWT.encode(payload, "supersecretcode")
      render json: { user: @user, jwt: token}
    else
      render json: {message: 'Fail'}
    end
  end

end
