class Show < ActiveRecord::Base

    validates_presence_of :datetime, :venue#, :ages, :note, TODO :price
    
    belongs_to  :venue

    has_many    :bands, :through => :also_playing_bands
    has_many    :also_playing_bands, :dependent => :destroy

    # has_many    :flyers, :through => :show_flyers
    # has_many    :show_flyers, :dependent => :destroy
    
    has_many    :photos, :through => :show_photos
    has_many    :show_photos, :dependent => :destroy
    
    # has_many    :videos, :through => :show_videos
    # has_many    :show_videos, :dependent => :destroy

    named_scope :future, :conditions => ["datetime <= ?", Time.now], :order => "datetime DESC"
    named_scope :past, :conditions => ["datetime >= ?", Time.now], :order => "datetime DESC"

end
