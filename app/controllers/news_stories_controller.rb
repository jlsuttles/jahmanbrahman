class NewsStoriesController < ApplicationController
  # GET /news_stories
  # GET /news_stories.xml
  def index
    @news_stories = NewsStory.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @news_stories }
    end
  end

  # GET /news_stories/1
  # GET /news_stories/1.xml
  def show
    @news_story = NewsStory.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @news_story }
    end
  end

  # GET /news_stories/new
  # GET /news_stories/new.xml
  def new
    @news_story = NewsStory.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @news_story }
    end
  end

  # GET /news_stories/1/edit
  def edit
    @news_story = NewsStory.find(params[:id])
  end

  # POST /news_stories
  # POST /news_stories.xml
  def create
    @news_story = NewsStory.new(params[:news_story])

    respond_to do |format|
      if @news_story.save
        format.html { redirect_to(@news_story, :notice => 'NewsStory was successfully created.') }
        format.xml  { render :xml => @news_story, :status => :created, :location => @news_story }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @news_story.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /news_stories/1
  # PUT /news_stories/1.xml
  def update
    @news_story = NewsStory.find(params[:id])

    respond_to do |format|
      if @news_story.update_attributes(params[:news_story])
        format.html { redirect_to(@news_story, :notice => 'NewsStory was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @news_story.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /news_stories/1
  # DELETE /news_stories/1.xml
  def destroy
    @news_story = NewsStory.find(params[:id])
    @news_story.destroy

    respond_to do |format|
      format.html { redirect_to(news_stories_url) }
      format.xml  { head :ok }
    end
  end
end
