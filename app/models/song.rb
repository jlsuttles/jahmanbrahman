class Song < ActiveRecord::Base
  #attr_accessible :title, :description
  
  has_attached_file :mp3,
    :path => ":rails_root/public/music/:class/:id.:extension",
    :url => "/:class/:id.:extension"
  
  validates_presence_of :title, :description
  validates_attachment_presence :mp3
  validates_attachment_content_type :mp3, :content_type => [ 'application/mp3', 'application/x-mp3', 'audio/mpeg', 'audio/mp3' ]
  validates_attachment_size :mp3, :less_than => 10.megabytes
end
