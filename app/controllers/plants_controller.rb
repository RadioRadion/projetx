class PlantsController < ApplicationController
  def index
    @plants = Plant.all
  end

  def new
  end

  def create
  end

  def edit
    @plant = Plant.find(params[:id])
  end

  def update
  end

  def delete
  end
end
