class EnginesController < ApplicationController

  before_action :find_engine, only:[:show, :edit, :update, :destroy]

  def index
    @engines = Engine.all.order("name ASC")
  end

  def new
    @engine = Engine.new
    @manufacturers = Manufacturer.all.map{ |c| [c.name, c.id] }
  end

  def create
    @engine = Engine.new(engine_params)
    @engine.manufacturer_id = params[:manufacturer_id]
    if @engine.save
      redirect_to root_path
    else
      render 'new'
    end
  end


  def show

  end


    def edit
      @engines = Engine.all.map{ |e| [e.name, e.id]}
      @manufacturers = Manufacturer.all.map{ |c| [c.name, c.id] }
    end


  def update
    if @engine.update(engine_params)
      redirect_to engine_path(@engine)
    else
      render 'edit'
    end
  end


  def destroy
    @engine.destroy
      redirect_to root_path
  end

  private

  def engine_params
    params.require(:engine).permit(:name, :description, :size, :litre, :cylinder, :valve, :hp, :kw, :torque, :production_start, :production_end, :type, :mark, :fuel_system, :manufacturer_id, :meta_title, :meta_description, :permalink, :no_index)
  end

  def find_engine
    @engine = Engine.find(params[:id])
  end

end
