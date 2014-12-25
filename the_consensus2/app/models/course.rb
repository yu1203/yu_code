class Course < ActiveRecord::Base

  has_many :praises
  has_many :criticisms


end
