class Student < ActiveRecord::Base
  attr_accessible :class_id, :grade_id, :name
  
  has_and_belongs_to_many :klasses
end
