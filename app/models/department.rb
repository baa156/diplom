class Department < ActiveRecord::Base
   has_and_belongs_to_many :user
   belongs_to :study_year
   has_many :graphics
   has_many :people
end
