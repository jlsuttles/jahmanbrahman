class NewsStoriesController < ApplicationController

  before_filter :require_admin, :only => [:show,:new,:edit,:create,:update,:destroy]

  def index
    @news_stories = NewsStory.all
  end

  def show
    @news_story = NewsStory.find(params[:id])
  end

  def new
    @news_story = NewsStory.new
  end

  def edit
    @news_story = NewsStory.find(params[:id])
  end

  def create
    @news_story = NewsStory.new(params[:news_story])
    if @news_story.save
      redirect_to(@news_story, :notice => 'NewsStory was successfully created.')
    else
      render :action => "new"
    end
  end

  def update
    @news_story = NewsStory.find(params[:id])
    if @news_story.update_attributes(params[:news_story])
      redirect_to(@news_story, :notice => 'NewsStory was successfully updated.')
    else
      render :action => "edit"
    end
  end

  def destroy
    @news_story = NewsStory.find(params[:id])
    @news_story.destroy
    redirect_to(news_stories_url)
  end

end
