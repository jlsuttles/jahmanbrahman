class Photo < ActiveRecord::Base

  has_attached_file :file, Paperclip::Config.merge({
    :styles => { "thumb" => "160x160#" }
  })
  
  validates_attachment_presence :file
  validates_attachment_content_type :file, :content_type => [ 'image/jpeg', 'image/png', 'image/tiff', 'image/gif' ]
  validates_attachment_size :file, :less_than => 5.megabytes

end
