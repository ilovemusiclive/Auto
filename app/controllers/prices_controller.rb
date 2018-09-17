class PricesController < ApplicationController

  before_action :find_prices, only:[:show, :edit, :update, :destroy]

  def index
    @prices = Price.all.order("con_one ASC")
  end

  def new
    @price = Price.new
  end

  def create
    @price = Price.new(price_params)
      if @price.save
        redirect_to root_path
      else
        render 'new'
    end
  end

  def show

  end

  def edit

  end

  def update
    if @price.update(price_params)
      redirect_to price_path(@price)
    else
      render 'edit'
    end
  end

  def destroy
    @price.destroy
      redirect_to root_path
  end

  private

  def price_params
    params.require(:price).permit(:new, :con_one, :con_two, :con_three, :con_four)
  end

  def find_prices
    @price = Price.find(params[:id])
  end

end
