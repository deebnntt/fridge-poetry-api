class ApplicationController < ActionController::API

  # before_action :authorized #before any action, check if they're authorized
  #
  def encode(payload)
    JWT.encode(payload, "supersecretcode")
  end

  def token
    if request.headers["Authorization"]
      request.headers["Authorization"].split(" ")[1]
    else
      nil
    end
  end

  def decode(token)
    begin
      JWT.decode(token, "supersecretcode")
    rescue JWT::DecodeError
      []
    end
  end

  def decoded_token #this will return an array with the payload & the jwt token
    if token
      decode(token)
    else
      []
    end
  end

  def current_user
    if !decoded_token.empty?
      user_id = decoded_token[0]["user_id"]
      user = User.find(user_id)
    else
      nil
    end
  end

  def logged_in?
    !!current_user
  end

  def authorized
    render json: { message: "Not logged in!" } unless logged_in?
  end

end
