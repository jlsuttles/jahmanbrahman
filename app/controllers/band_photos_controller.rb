class BandPhotosController < ApplicationController

  before_filter :require_admin, :only => [:show,:new,:edit,:create,:update,:destroy]

  def index
    @band_photos = BandPhoto.all
  end

  def show
    @band_photo = BandPhoto.find(params[:id])
  end

  def new
    @band_photo = BandPhoto.new
  end

  def edit
    @band_photo = BandPhoto.find(params[:id])
  end

  def create
    @band_photo = BandPhoto.new(params[:band_photo])
    if @band_photo.save
      redirect_to(@band_photo, :notice => 'BandPhoto was successfully created.') 
    else
      render :action => "new"
    end
  end

  def update
    @band_photo = BandPhoto.find(params[:id])
    if @band_photo.update_attributes(params[:band_photo])
      redirect_to(@band_photo, :notice => 'BandPhoto was successfully updated.') 
    else
      render :action => "edit" 
    end
  end

  def destroy
    @band_photo = BandPhoto.find(params[:id])
    @band_photo.destroy
    redirect_to(band_photos_url)
  end
  
end
