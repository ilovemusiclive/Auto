class ModellsController < ApplicationController

  before_action :find_modell, only:[:show, :edit, :update, :destroy]

  def index
    @modells = Modell.all.order("name ASC")
  end

  def new
    @modell = Modell.new
    @manufacturers = Manufacturer.all.map{ |c| [c.name, c.id] }
  end

  def create
    @modell = Modell.new(modell_params)
    @modell.manufacturer_id = params[:manufacturer_id]
      if @modell.save
        redirect_to root_path
      else
        render 'new'
    end
  end

  def show

  end

  def edit
    @modells = Modell.all.map{ |c| [c.name, c.id] }
    @manufacturers = Manufacturer.all.map{ |c| [c.name, c.id] }
  end

  def update
    if @modell.update(modell_params)
      redirect_to modell_path(@modell)
    else
      render 'edit'
    end
  end

  def destroy
    @modell.destroy
      redirect_to root_path
  end

  private

  def modell_params
    params.require(:modell).permit(:name, :description, :manufacturer_id, :date, :meta_title, :meta_description, :permalink, :no_index)
  end

  def find_modell
    @modell = Modell.find(params[:id])
  end

end
