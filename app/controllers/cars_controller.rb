class CarsController < ApplicationController

  before_action :find_cars, only:[:show, :edit, :update, :destroy]

  def index
    @cars = Car.all.order("name ASC")
  end

  def new
    @car = Car.new
    @manufacturers = Manufacturer.all.map{ |c| [c.name, c.id] }
    @modells = Modell.all.map{ |m| [m.name, m.id] }
    @bodies = Body.all.map{ |b| [b.name, b.id] }
    @engines = Engine.all.map{ |e| [e.name, e.id]}
    @fuels = Fuel.all.map{ |f| [f.name, f.id]}
    @fuel_efficiencies = FuelEfficiency.all.map{ |g| [g.mpg, g.id]}
    @speeds = Speed.all.map{ |s| [s.sixty, s.hundered, s.top, s.id]}
    @prices = Price.all.map{ |d| [d.con_one, d.id]}
  end

  def create
    @car = Car.new(car_params)
    @car.manufacturer_id = params[:manufacturer_id]
    @car.modell_id = params[:modell_id]
    @car.body_id = params[:body_id]
    @car.engine_id = params[:engine_id]
    @car.fuel_id = params[:fuel_id]
    @car.fuel_efficiency_id = params[:fuel_efficiency_id]
    @car.speed_id = params[:speed_id]
    @car.price_id = params[:price_id]
     if @car.save
      redirect_to root_path
    else
      render 'new'
    end
  end

  def show

  end

  def edit
    @manufacturers = Manufacturer.all.map{ |c| [c.name, c.id] }
    @modells = Modell.all.map{ |m| [m.name, m.id] }
    @bodies = Body.all.map{ |b| [b.name, b.id] }
    @engines = Engine.all.map{ |e| [e.name, e.id]}
    @fuels = Fuel.all.map{ |f| [f.name, f.id]}
    @fuel_efficiencies = FuelEfficiency.all.map{ |g| [g.mpg, g.id]}
    @speeds = Speed.all.map{ |s| [s.sixty, s.hundered, s.top, s.id]}
    @prices = Price.all.map{ |d| [d.con_one, d.id]}
  end

  def update
    @car.manufacturer_id = params[:manufacturer_id]
    @car.modell_id = params[:modell_id]
    @car.body_id = params[:body_id]
    @car.engine_id = params[:engine_id]
    @car.fuel_id = params[:fuel_id]
    @car.fuel_efficiency_id = params[:fuel_efficiency_id]
    @car.speed_id = params[:speed_id]
    @car.price_id = params[:price_id]
    if @car.update(car_params)
      redirect_to car_path(@car)
    else
      render 'edit'
    end
  end

  def destroy
    @car.destroy
      redirect_to root_path
  end

  private

  def car_params
    params.require(:car).permit(:description, :manufacturer_id, :modell_id, :body_id, :engine_id, :fuel_id, :fuel_efficiency_id, :speed_id, :price_id, :date, :meta_title, :meta_description, :permalink, :no_index)
  end

  def find_cars
    @car = Car.find(params[:id].to_i)
  end

end

