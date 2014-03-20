class Semester < ActiveRecord::Base
  attr_accessible :term, :year
  
  has_many :klasses
end
