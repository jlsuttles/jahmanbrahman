class NewsStoryLink < ActiveRecord::Base
  validates_presence_of :news_story, :link
end
