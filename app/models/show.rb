class Show < ActiveRecord::Base
    validates_presence_of :datetime, :venue
    
    belongs_to  :venue
    has_many    :also_playing_bands
    has_many    :bands, :through => :also_playing_bands
    # has_many    :flyers
    # has_many    :photos
    # has_many    :videos
    # has_many    :comments

    named_scope :future, :conditions => ["date <= ?", Date.today]
    named_scope :past, :conditions => ["date >= ?", Date.today]
end
