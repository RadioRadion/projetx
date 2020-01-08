class PlantsController < ApplicationController
  before_action :set_plant, only: [:edit, :update, :destroy]
  def index
    @plants = Plant.all
  end

  def new
    @plant = Plant.new
  end

  def create
    @plant = Plant.new(plants_params)
    if @plant.save
      redirect_to plants_path
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @plant.update(plants_params)
      redirect_to plants_path
    else
      render :edit
    end
  end

  def destroy
    @plant.destroy

    redirect_to plants_path
  end

  private

  def plants_params
    params.require(:plant).permit(:name, :description)
  end

  def set_plant
    @plant = Plant.find(params[:id])
  end
end
