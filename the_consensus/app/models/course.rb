class Course < ActiveRecord::Base

  has_many :criticisms
  has_many :praises

end
