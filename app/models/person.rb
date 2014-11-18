class Person < ActiveRecord::Base
   belongs_to :department
   has_many :groups
end
