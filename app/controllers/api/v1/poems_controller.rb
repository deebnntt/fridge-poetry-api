class Api::V1::PoemsController < ApplicationController

  def index
    @poems = Poem.all
    render json: @poems
  end

  def create
    @poem = Poem.new

    poem_params[:magnet].each do |w|
      @magnet = Magnet.new(w)
      @poem.magnets << @magnet
      @magnet.save
    end

    @poem.save

    render json: @poem
  end

  def update
    @poem = Poem.find(params[:id])

    if update_poem_params[:title]
      @poem.title = update_poem_params[:title]
    elsif update_poem_params[:color]
      @poem.color = update_poem_params[:color]
    end

    @poem.save

    render json: @poem
  end

  def show
    @poem = Poem.find(params[:id])

    render json: @poem
  end

  private

  def poem_params
    params.require(:poem).permit(magnet: [:text, :x, :y])
  end

  def update_poem_params
    params.permit(:title, :color)
  end

end
