class AboutLinks < ActiveRecord::Base
  validates_presence_of :about, :link
end
