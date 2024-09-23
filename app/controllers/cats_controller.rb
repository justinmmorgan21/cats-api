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
  
  def update
    @cat = Cat.find_by(id: params[:id])
    @cat.name = params[:name]
    @cat.breed = params[:breed]
    @cat.age = params[:age]
    @cat.image = params[:image]
    if @cat.save
      render :show
    else
      render json: {error: @cat.errors.full_messages}, status: :unprocessale_entity
    end
  end

  def destroy
    @cat = Cat.find_by(id: params[:id])
    @cat.destroy
    render json: {message: "#{@cat.name} removed."}
  end
end
