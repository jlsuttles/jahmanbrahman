class BandPhotosController < ApplicationController
  # GET /band_photos
  # GET /band_photos.xml
  def index
    @band_photos = BandPhoto.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @band_photos }
    end
  end

  # GET /band_photos/1
  # GET /band_photos/1.xml
  def show
    @band_photo = BandPhoto.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @band_photo }
    end
  end

  # GET /band_photos/new
  # GET /band_photos/new.xml
  def new
    @band_photo = BandPhoto.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @band_photo }
    end
  end

  # GET /band_photos/1/edit
  def edit
    @band_photo = BandPhoto.find(params[:id])
  end

  # POST /band_photos
  # POST /band_photos.xml
  def create
    @band_photo = BandPhoto.new(params[:band_photo])

    respond_to do |format|
      if @band_photo.save
        format.html { redirect_to(@band_photo, :notice => 'BandPhoto was successfully created.') }
        format.xml  { render :xml => @band_photo, :status => :created, :location => @band_photo }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @band_photo.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /band_photos/1
  # PUT /band_photos/1.xml
  def update
    @band_photo = BandPhoto.find(params[:id])

    respond_to do |format|
      if @band_photo.update_attributes(params[:band_photo])
        format.html { redirect_to(@band_photo, :notice => 'BandPhoto was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @band_photo.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /band_photos/1
  # DELETE /band_photos/1.xml
  def destroy
    @band_photo = BandPhoto.find(params[:id])
    @band_photo.destroy

    respond_to do |format|
      format.html { redirect_to(band_photos_url) }
      format.xml  { head :ok }
    end
  end
end
