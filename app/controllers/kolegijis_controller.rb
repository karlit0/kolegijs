class KolegijisController < ApplicationController
  # GET /kolegijis
  # GET /kolegijis.json
  def index
    @kolegijis = Kolegiji.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @kolegijis }
    end
  end

  # GET /kolegijis/1
  # GET /kolegijis/1.json
  def show
    @kolegiji = Kolegiji.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @kolegiji }
    end
  end

  # GET /kolegijis/new
  # GET /kolegijis/new.json
  def new
    @kolegiji = Kolegiji.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @kolegiji }
    end
  end

  # GET /kolegijis/1/edit
  def edit
    @kolegiji = Kolegiji.find(params[:id])
  end

  # POST /kolegijis
  # POST /kolegijis.json
  def create
    @kolegiji = Kolegiji.new(params[:kolegiji])

    respond_to do |format|
      if @kolegiji.save
        format.html { redirect_to @kolegiji, notice: 'Kolegiji was successfully created.' }
        format.json { render json: @kolegiji, status: :created, location: @kolegiji }
      else
        format.html { render action: "new" }
        format.json { render json: @kolegiji.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /kolegijis/1
  # PUT /kolegijis/1.json
  def update
    @kolegiji = Kolegiji.find(params[:id])

    respond_to do |format|
      if @kolegiji.update_attributes(params[:kolegiji])
        format.html { redirect_to @kolegiji, notice: 'Kolegiji was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @kolegiji.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /kolegijis/1
  # DELETE /kolegijis/1.json
  def destroy
    @kolegiji = Kolegiji.find(params[:id])
    @kolegiji.destroy

    respond_to do |format|
      format.html { redirect_to kolegijis_url }
      format.json { head :no_content }
    end
  end
end
