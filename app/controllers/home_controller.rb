class HomeController < ApplicationController

  def index
    @news_stories = NewsStory.find(:all, :order => "created_at DESC")
    @songs = Song.all
    @future_shows = Show.future.all
  end

end
