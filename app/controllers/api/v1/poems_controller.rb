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

  def show
    @poem = Poem.find(params[:id])

    render json: @poem
  end

  private

  def poem_params
    params.require(:poem).permit(magnet: [:text, :x, :y])
  end

end
