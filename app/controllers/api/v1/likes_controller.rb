class Api::V1::LikesController< ApplicationController

  def index
    @likes = Like.all

    render json: @likes
  end

  def create
    @like = Like.create(user_id: params[:user_id], poem_id: params[:poem_id])

    render json: @like
  end

  private

  def like_params
    params.require(:like).permit(:user_id, :poem_id)
  end

end
