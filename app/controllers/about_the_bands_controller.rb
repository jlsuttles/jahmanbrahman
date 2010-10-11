class AboutTheBandsController < ApplicationController
  # GET /about_the_bands
  # GET /about_the_bands.xml
  def index
    @about_the_bands = AboutTheBand.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @about_the_bands }
    end
  end

  # GET /about_the_bands/1
  # GET /about_the_bands/1.xml
  def show
    @about_the_band = AboutTheBand.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @about_the_band }
    end
  end

  # GET /about_the_bands/new
  # GET /about_the_bands/new.xml
  def new
    @about_the_band = AboutTheBand.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @about_the_band }
    end
  end

  # GET /about_the_bands/1/edit
  def edit
    @about_the_band = AboutTheBand.find(params[:id])
  end

  # POST /about_the_bands
  # POST /about_the_bands.xml
  def create
    @about_the_band = AboutTheBand.new(params[:about_the_band])

    respond_to do |format|
      if @about_the_band.save
        format.html { redirect_to(@about_the_band, :notice => 'AboutTheBand was successfully created.') }
        format.xml  { render :xml => @about_the_band, :status => :created, :location => @about_the_band }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @about_the_band.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /about_the_bands/1
  # PUT /about_the_bands/1.xml
  def update
    @about_the_band = AboutTheBand.find(params[:id])

    respond_to do |format|
      if @about_the_band.update_attributes(params[:about_the_band])
        format.html { redirect_to(@about_the_band, :notice => 'AboutTheBand was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @about_the_band.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /about_the_bands/1
  # DELETE /about_the_bands/1.xml
  def destroy
    @about_the_band = AboutTheBand.find(params[:id])
    @about_the_band.destroy

    respond_to do |format|
      format.html { redirect_to(about_the_bands_url) }
      format.xml  { head :ok }
    end
  end
end
