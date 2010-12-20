class HomeController < ApplicationController

  def index
    @news_stories = NewsStory.all
  end

end
