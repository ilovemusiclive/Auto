class FuelsController < ApplicationController

  before_action :find_fuel, only:[:show, :edit, :update, :destroy]

  def index
    @fuels = Fuel.all.order("name ASC")
  end

  def new
    @fuel = Fuel.new
    @manufacturers = Manufacturer.all.map { |c| [c.name, c.id] }
  end

  def create
    @fuel = Fuel.new(fuel_params)
    @fuel.manufacturer_id = params[:manufacturer_id]
      if @fuel.save
        redirect_to root_path
      else
        render 'new'
      end
  end

  def show

  end

  def edit
    @fuels = Fuel.all.map{ |f| [f.name, f.id]}
    @manufacturers = Manufacturer.all.map{ |c| [c.name, c.id]}
  end

  def update
    @fuel.manufacturer_id = params[:manufacturer_id]
    if @fuel.update(fuel_params)
      redirect_to fuel_path(@fuel)
    else
      render 'edit'
    end
  end

  def destroy
    @fuel.destroy
      redirect_to root_path
  end

  private

  def fuel_params
    params.require(:fuel).permit(:name, :description, :manufacturer_id)
  end

  def find_fuel
    @fuel = Fuel.find(params[:id])
  end

end
