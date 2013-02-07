class ToursController < ApplicationController
  def new
  end

  def create
  end

  def update
  end

  def edit
  end

  def destroy
  end

  def index
    @tours = Tour.all
  end

  def show
    @tour = Tour.find(params[:id])
  end
end
