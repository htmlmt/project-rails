class Teacher < ActiveRecord::Base
  attr_accessible :class_id, :name
  has_many :klasses
end
