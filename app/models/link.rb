class Link < ActiveRecord::Base
  validates_presence_of :title, :description, :url
end
