class Address < ActiveRecord::Base
  validates_presence_of :city, :state#, :line1, :line2, :zip
  
  belongs_to :venue
end
