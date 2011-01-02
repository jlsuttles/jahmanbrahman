class About < ActiveRecord::Base
  
  validates_presence_of :title, :description

  has_many :links, :through => :about_links
  has_many :about_links, :dependent => :destroy

  has_many :photos, :through => :about_photos
  has_many :about_photos, :dependent => :destroy
  
end
