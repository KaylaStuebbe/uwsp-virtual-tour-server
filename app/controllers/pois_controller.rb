class PoisController < ApplicationController
  # GET /pois
  # GET /pois.json
  def index
    @tour = Tour.find(params[:tour_id])
    @pois = @tour.pois

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @pois.to_json(:include => :ioi) }
      format.xml { render :xml => @pois.to_xml(:include => :ioi) }
    end
  end

  # GET /tour/1/pois/1
  # GET /tour/1/pois/1.json
  def show
    @tour = Tour.find(params[:tour_id])
    @poi = Poi.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @poi }
    end
  end

  # GET /tour/1/pois/new
  # GET /tour/1/pois/new.json
  def new
    @tour = Tour.find(params[:tour_id])
    @poi = Poi.new
    @poi.tour = @tour

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @poi }
    end
  end

  # GET /pois/1/edit
  def edit
    @tour = Tour.find(params[:tour_id])
    @poi = Poi.find(params[:id])
  end

  # POST /pois
  # POST /pois.json
  def create
    @tour = Tour.find(params[:tour_id])
    @poi = Poi.new(params[:poi])
    @poi.tour = @tour

    respond_to do |format|
      if @poi.save
        format.html { redirect_to tour_poi_path(@tour, @poi), notice: 'Poi was successfully created.' }
        format.json { render json: @poi, status: :created, location: @poi }
      else
        format.html { render action: "new" }
        format.json { render json: @poi.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /pois/1
  # PUT /pois/1.json
  def update
    @tour = Tour.find(params[:tour_id])
    @poi = Poi.find(params[:id])

    respond_to do |format|
      if @poi.update_attributes(params[:poi])
        format.html { redirect_to tour_poi_path(@tour, @poi), notice: 'Poi was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @poi.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pois/1
  # DELETE /pois/1.json
  def destroy
    @poi = Poi.find(params[:id])
    @poi.destroy

    respond_to do |format|
      format.html { redirect_to tour_pois_url }
      format.json { head :no_content }
    end
  end
end
