class AboutPhotos < ActiveRecord::Base
  validates_presence_of :about, :photo
end
