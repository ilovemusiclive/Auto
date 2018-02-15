class FuelEfficienciesController < ApplicationController

  before_action :find_fuel_efficiency, only:[:show, :edit, :update, :destroy]

  def index
    @fuel_efficiencies = FuelEfficiency.all.order("mpg ASC")
  end

  def new
    @fuel_efficiency = FuelEfficiency.new
  end

  def create
    @fuel_efficiency = FuelEfficiency.new(fuel_efficiency_params)
    if @fuel_efficiency.save
      redirect_to root_path
    else
      render 'new'
    end
  end


  def show

  end

  def edit
    @fuel_efficiencies = FuelEfficiency.all.map{ |e| [e.mpg, e.id]}
    @manufacturers = Manufacturer.all.map{ |c| [c.name, c.id] }
  end


  def update
    if @fuel_efficiency.update(fuel_efficiency_params)
      redirect_to fuel_efficiency_path(@fuel_efficiency)
    else
      render 'edit'
    end
  end

  def destroy
    @fuel_efficiency.destroy
      redirect_to root_path
  end

  private

  def fuel_efficiency_params
    params.require(:fuel_efficiency).permit(:mpg, :kml, :meta_title, :meta_description, :permalink, :no_index)
  end

  def find_fuel_efficiency
    @fuel_efficiency = FuelEfficiency.find(params[:id])
  end

end
