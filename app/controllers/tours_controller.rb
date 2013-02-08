class ToursController < ApplicationController
  def new
    @tour = Tour.new
  end

  def create
    @tour = Tour.new(params[:tour])

    if @tour.save
      redirect_to @tour, notice: 'Tour was successfully created.'
    else
      render action: "new"
    end
  end

  def update
    @tour = Tour.find(params[:id])

    if @tour.update_attributes(params[:tour])
      redirect_to @tour, notice: 'Poi was successfully updated.'
    else
      render action: "edit"
    end
  end

  def edit
    @tour = Tour.find(params[:id])
  end

  def destroy
    @tour = Tour.find(params[:id])
    @tour.destroy

    redirect_to tours_url, notice: 'Tour was successfully destroyed.'
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
