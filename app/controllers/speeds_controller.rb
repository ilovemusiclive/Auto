class SpeedsController < ApplicationController

    before_action :find_speeds, only:[:show, :edit, :update, :destroy]

  def index
    @speeds = Speed.all.order("sixty ASC")
  end

  def new
    @speed = Speed.new
  end

  def create
    @speed = Speed.new(speed_params)
      if @speed.save
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
    if @speed.update(speed_params)
      redirect_to speed_path(@speed)
    else
      render 'edit'
    end
  end

  def destroy
    @speed.destroy
      redirect_to root_path
  end

  private

  def speed_params
    params.require(:speed).permit(:sixty, :hundered, :top)
  end

  def find_speeds
    @speed = Speed.find(params[:id])
  end
end
