class FruitController < ApplicationController
  def index
    @Fruit = Fruit.all
  end
  def new
  end
  def create
    @Fruit = Fruit.new(name: params[:name], price: params[:price], color: params[:color], size: params[:size], country: params[:country], season: params[:season])
    @Fruit.save
    @Fruit = Fruit.all
  end
  def show
    @Fruit = Fruit.find(params[:id])
  end
  def edit
    @Fruit = Fruit.find(params[:id])
  end
  def update
    @Fruit = Fruit.find(params[:id])
    if @Fruit.update(name: params[:name], price: params[:price], color: params[:color], size: params[:size], country: params[:country], season: params[:season])
      redirect_to '/fruit/index'
    else
      redirect_to "/fruit/#{params[:id]}/edit"
    end
  end
end
