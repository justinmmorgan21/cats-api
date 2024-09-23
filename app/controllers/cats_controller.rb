class CatsController < ApplicationController

  def cat_params = {
    name: params[:name],
    breed: params[:breed],
    age: params[:age],
    image: params[:image]
  }
  def index
    @cats = Cat.all
    render :index
  end

  def create
    @cat = Cat.new(cat_params)
    if @cat.save
      render :show
    else
      render json: {error: @cat.errors.full_messages}, status: :unprocessale_entity
    end
  end
end
