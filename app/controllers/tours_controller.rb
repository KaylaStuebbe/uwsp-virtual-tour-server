class ToursController < ApplicationController
  def new
    @tour = Tour.new
  end

  def create
  end

  def update
  end

  def edit
    @tour = Tour.find(params[:id])
  end

  def destroy
  end

  def index
    @tours = Tour.all

    respond_to do |format|
      format.html
      format.json { render json: @tours }
      format.xml { render xml: @tours }
    end
  end

  def show
    @tour = Tour.find(params[:id])

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @tour.to_json(:include => :pois) }
      format.xml { render :xml => @tour.to_xml(:include => :pois) }
    end
  end
end
