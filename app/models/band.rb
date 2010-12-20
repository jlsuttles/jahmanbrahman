class Band < ActiveRecord::Base
    validates_presence_of :name#, :website

    has_many :also_playing_shows
    has_many :shows, :through => :also_playing_shows
end
