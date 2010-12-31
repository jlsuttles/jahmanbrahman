class Show < ActiveRecord::Base
    validates_presence_of :datetime, :venue#, :note, :ages
    
    belongs_to  :venue

    has_many    :bands, :through => :also_playing_bands
    has_many    :also_playing_bands

    # has_many    :comments
    # has_many    :flyers
    
    has_many    :photos, :through => :show_photos
    has_many    :show_photos, :dependent => :destroy
    
    # has_many    :videos, :through => :show_videos
    # has_many    :show_videos, :dependent => :destroy

    named_scope :future, :conditions => ["datetime <= ?", Time.now]
    named_scope :past, :conditions => ["datetime >= ?", Time.now]
end
