class NewsStory < ActiveRecord::Base
  
  validates_presence_of :title, :description

  has_many :links, :through => :news_story_links
  has_many :news_story_links, :dependent => :destroy

  has_many :photos, :through => :news_story_photos
  has_many :news_story_photos, :dependent => :destroy

  # has_many :videos, :through => :news_story_videos
  # has_many :news_story_videos, :dependent => :destroy

end
