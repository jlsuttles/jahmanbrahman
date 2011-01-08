class ShowsController < ApplicationController

  before_filter :require_admin, :only => [:show,:new,:edit,:create,:update,:destroy]

  layout 'shadowbox'

  def index
    @future_shows = Show.future.all
    @past_shows = Show.past.all
    render :layout => 'application'
  end

  def show
    @show = Show.find(params[:id])
  end

  def new
    @show = Show.new
  end

  def edit
    @show = Show.find(params[:id])
  end

  def create
    @show = Show.new(params[:show])
    if @show.save
      redirect_to(@show, :notice => 'Show was successfully created.')
    else
      render :action => "new"
    end
  end

  def update
    @show = Show.find(params[:id])
    if @show.update_attributes(params[:show])
      redirect_to(@show, :notice => 'Show was successfully updated.')
    else
      render :action => "edit"
    end
  end

  def destroy
    @show = Show.find(params[:id])
    @show.destroy
    redirect_to(shows_url)
  end

end
