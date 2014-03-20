class Student < ActiveRecord::Base
  attr_accessible :class_id, :grade_id, :name
  
 has_many_and_belongs_to klasses
  has_many grades
end
