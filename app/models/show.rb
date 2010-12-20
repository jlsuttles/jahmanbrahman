class Show < ActiveRecord::Base
    validates_presence_of :title, :description, :date, :time

    named_scope :future, :conditions => ["date <= ?", Date.today]
    named_scope :past, :conditions => ["date >= ?", Date.today]
end
