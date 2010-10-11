class PressStoriesController < ApplicationController
  # GET /press_stories
  # GET /press_stories.xml
  def index
    @press_stories = PressStory.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @press_stories }
    end
  end

  # GET /press_stories/1
  # GET /press_stories/1.xml
  def show
    @press_story = PressStory.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @press_story }
    end
  end

  # GET /press_stories/new
  # GET /press_stories/new.xml
  def new
    @press_story = PressStory.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @press_story }
    end
  end

  # GET /press_stories/1/edit
  def edit
    @press_story = PressStory.find(params[:id])
  end

  # POST /press_stories
  # POST /press_stories.xml
  def create
    @press_story = PressStory.new(params[:press_story])

    respond_to do |format|
      if @press_story.save
        format.html { redirect_to(@press_story, :notice => 'PressStory was successfully created.') }
        format.xml  { render :xml => @press_story, :status => :created, :location => @press_story }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @press_story.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /press_stories/1
  # PUT /press_stories/1.xml
  def update
    @press_story = PressStory.find(params[:id])

    respond_to do |format|
      if @press_story.update_attributes(params[:press_story])
        format.html { redirect_to(@press_story, :notice => 'PressStory was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @press_story.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /press_stories/1
  # DELETE /press_stories/1.xml
  def destroy
    @press_story = PressStory.find(params[:id])
    @press_story.destroy

    respond_to do |format|
      format.html { redirect_to(press_stories_url) }
      format.xml  { head :ok }
    end
  end
end
