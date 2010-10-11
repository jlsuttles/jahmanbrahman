class NewsStory < ActiveRecord::Base
  validates_presence_of :title, :description
end
