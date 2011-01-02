class NewsStoryLink < ActiveRecord::Base
  validates_presence_of :news_story, :link

  belongs_to :news_story
  belongs_to :link
end
