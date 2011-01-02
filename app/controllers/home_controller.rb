class HomeController < ApplicationController

  def index
    @news_stories = NewsStory.find(:all, :order => "created_at DESC")
  end

end
