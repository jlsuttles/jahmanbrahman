class NewsStoryPhoto < ActiveRecord::Base
  validates_presence_of :news_story, :photo

  belongs_to :news_story
  belongs_to :photo
end
