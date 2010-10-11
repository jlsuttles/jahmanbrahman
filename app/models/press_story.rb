class PressStory < ActiveRecord::Base
  validates_presence_of :title, :description, :url
end
