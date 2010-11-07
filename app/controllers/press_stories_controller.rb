class PressStoriesController < ApplicationController

  before_filter :require_admin, :only => [:show,:new,:edit,:create,:update,:destroy]

  def index
    @press_stories = PressStory.all
  end

  def show
    @press_story = PressStory.find(params[:id])
  end

  def new
    @press_story = PressStory.new
  end

  def edit
    @press_story = PressStory.find(params[:id])
  end

  def create
    @press_story = PressStory.new(params[:press_story])
    if @press_story.save
      redirect_to(@press_story, :notice => 'PressStory was successfully created.')
    else
      render :action => "new"
    end
  end

  def update
    @press_story = PressStory.find(params[:id])
    if @press_story.update_attributes(params[:press_story])
      redirect_to(@press_story, :notice => 'PressStory was successfully updated.')
    else
      render :action => "edit"
    end
  end

  def destroy
    @press_story = PressStory.find(params[:id])
    @press_story.destroy
    redirect_to(press_stories_url)
  end
  
end
