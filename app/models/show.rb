class Show < ActiveRecord::Base
    validates_presence_of :title, :description, :date, :time
end
