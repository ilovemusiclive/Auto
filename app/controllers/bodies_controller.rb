class BodiesController < ApplicationController

  before_action :find_bodies, only:[:show, :edit, :update, :destroy]

  def index
    @bodies = Body.all.order("name ASC")
  end

  def new
    @body = Body.new
  end

  def create
    @body = Body.new(body_params)
      if @body.save
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
    if @body.update(body_params)
      redirect_to body_path(@body)
    else
      render 'edit'
    end
  end

  def destroy
    @body.destroy
      redirect_to root_path
  end

  private

  def body_params
    params.require(:body).permit(:name, :description, :date, :meta_title, :meta_description, :permalink, :no_index)
  end

  def find_bodies
    @body = Body.find(params[:id])
  end

end
