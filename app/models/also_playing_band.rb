class AlsoPlayingBand < ActiveRecord::Base
  validates_presence_of :band, :show
end

