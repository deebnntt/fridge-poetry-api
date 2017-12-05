class Api::V1::UsersController < ApplicationController

  def index
    @users = User.all
    render json: @users
  end

  def create
    @user = User.new(username: params[:username], password: params[:password])
    if @user.save
      payload = {user_id: @user.id}
      token = JWT.encode(payload, "supersecretmessage")
      render json: {user:@user, jwt: token }
    else
      render json: { message: "Fail"}
    end
  end

  def me #send back info on user if they're logged in
    render json: current_user
  end

end
