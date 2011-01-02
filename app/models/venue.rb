class Venue < ActiveRecord::Base
    validates_presence_of :name#, :website

    has_one   :address
    has_many  :shows

    accepts_nested_attributes_for :address
end

