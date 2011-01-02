class SongsController < ApplicationController

  before_filter :require_admin, :only => [:show,:new,:edit,:create,:update,:destroy]

  layout 'shadowbox'

  def index
    @songs = Song.all

    respond_to do |fmt|
      fmt.html{render :layout => 'application'}      
      fmt.js
    end
  end

  def show
    @song = Song.find(params[:id])
  end

  def new
    @song = Song.new
  end

  def edit
    @song = Song.find(params[:id])
  end

  def create
    @song = Song.new(params[:song])
    if @song.save
      redirect_to(@song, :notice => 'Song was successfully created.')
    else
      render :action => "new"
    end
  end

  def update
    @song = Song.find(params[:id])
    if @song.update_attributes(params[:song])
      redirect_to(@song, :notice => 'Song was successfully updated.')
    else
      render :action => "edit"
    end
  end

  def destroy
    @song = Song.find(params[:id])
    @song.destroy
    redirect_to(songs_url)
  end

end
