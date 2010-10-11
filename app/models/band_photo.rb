class BandPhoto < ActiveRecord::Base
  #attr_accessible :title, :description
  
  has_attached_file :file, 
    :path => ":rails_root/public/images/:class/:id_:style.:extension",
    :url => "/:class/:id_:style.:extension"
  
  validates_presence_of :title, :description
  validates_attachment_presence :file
  validates_attachment_content_type :file, :content_type => [ 'image/jpeg', 'image/png', 'image/tiff', 'image/gif' ]
  validates_attachment_size :file, :less_than => 5.megabytes
  
end
