class ItemToViewsController < ApplicationController
  # GET /item_to_views
  # GET /item_to_views.json
  def index
    @item_to_views = ItemToView.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @item_to_views }
    end
  end

  # GET /item_to_views/1
  # GET /item_to_views/1.json
  def show
    @item_to_view = ItemToView.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @item_to_view }
    end
  end

  # GET /item_to_views/new
  # GET /item_to_views/new.json
  def new
    @item_to_view = ItemToView.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @item_to_view }
    end
  end

  # GET /item_to_views/1/edit
  def edit
    @item_to_view = ItemToView.find(params[:id])
  end

  # POST /item_to_views
  # POST /item_to_views.json
  def create
    @item_to_view = ItemToView.new(params[:item_to_view])

    respond_to do |format|
      if @item_to_view.save
        format.html { redirect_to @item_to_view, notice: 'Item to view was successfully created.' }
        format.json { render json: @item_to_view, status: :created, location: @item_to_view }
      else
        format.html { render action: "new" }
        format.json { render json: @item_to_view.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /item_to_views/1
  # PUT /item_to_views/1.json
  def update
    @item_to_view = ItemToView.find(params[:id])

    respond_to do |format|
      if @item_to_view.update_attributes(params[:item_to_view])
        format.html { redirect_to @item_to_view, notice: 'Item to view was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @item_to_view.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /item_to_views/1
  # DELETE /item_to_views/1.json
  def destroy
    @item_to_view = ItemToView.find(params[:id])
    @item_to_view.destroy

    respond_to do |format|
      format.html { redirect_to item_to_views_url }
      format.json { head :no_content }
    end
  end
end
