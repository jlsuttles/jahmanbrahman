class NewsStory < ActiveRecord::Base
  
  validates_presence_of :title, :description

  has_many :news_story_links, :dependent => :destroy
  has_many :links, :through => :news_story_links

  has_many :photos, :through => :news_story_photos
  has_many :news_story_photos, :dependent => :destroy

  # has_many :videos, :through => :news_story_videos
  # has_many :news_story_videos, :dependent => :destroy

  accepts_nested_attributes_for :links, :reject_if => lambda { |l| l.values.all?(&:blank?) } 
  accepts_nested_attributes_for :photos#, :videos

end
