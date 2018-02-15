class BikesController < ApplicationController

  before_action :find_bikes, only:[:show, :edit, :update, :destroy]

  def index
    @bikes = Bike.all.order("name ASC")
  end

  def new
    @bike = Bike.new
    @manufacturers = Manufacturer.all.map{ |c| [c.name, c.id]}
  end

  def create
    @bike = Bike.new(bike_params)
    @bike.manufacturer_id = params[:manufacturer_id]
      if @bike.save
        redirect_to root_path
      else
        render 'new'
    end
  end

  def show

  end


    def update
    @bike.manufacturer_id = params[:manufacturer_id]
    if @bike.update(bike_params)
      redirect_to bike_path(@bike)
    else
      render 'edit'
    end
  end


  def edit
    @manufacturers = Manufacturer.all.map{ |c| [c.name, c.id] }
    @modells = Modell.all.map{ |m| [m.name, m.id] }
    @bodies = Body.all.map{ |b| [b.name, b.id] }
    @engines = Engine.all.map{ |e| [e.name, e.id]}
    @fuels = Fuel.all.map{ |f| [f.name, f.id]}
    @fuel_efficiencies = FuelEfficiency.all.map{ |g| [g.mpg, g.id]}
  end


  def destroy
    @bike.destroy
      redirect_to root_path
  end

  private

  def bike_params
    params.require(:bike).permit(:name, :description, :manufacturer_id, :date, :meta_title, :meta_description, :permalink, :no_index)
  end

  def find_bikes
    @bike = Bike.find(params[:id])
  end

end
