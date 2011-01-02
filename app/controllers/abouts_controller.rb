class AboutsController < ApplicationController

  before_filter :require_admin, :only => [:show,:new,:edit,:create,:update,:destroy]

  layout 'shadowbox'

  def index
    @abouts = About.all
    render :layout => 'application'
  end
  
  def show
    @about = About.find(params[:id])
  end

  def new
    @about = About.new(:title => "Title", :description => "Description")
  end

  def edit
    @about = About.find(params[:id])
  end

  def create
    @about = About.new(params[:about])
    if @about.save
      redirect_to(@about, :notice => 'About was successfully created.')
    else
      render :action => "new"
    end
  end

  def update
    @about = About.find(params[:id])
    if @about.update_attributes(params[:about])
      redirect_to(@about, :notice => 'About was successfully updated.')
    else
      render :action => "edit"
    end
  end

  def destroy
    @about = About.find(params[:id])
    @about.destroy
    redirect_to(abouts_url)
  end
  
end
