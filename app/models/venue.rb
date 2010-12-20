class Venue < ActiveRecord::Base
    validates_presence_of :name#, :website

    has_one   :address
    has_many  :shows
end

