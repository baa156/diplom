class Department < ActiveRecord::Base
   has_and_belongs_to_many :user
   belongs_to :study_year
   has_many :graphics
   has_many :people
   
   validates :number, presence: true
   validates :name, presence: true
   validates :zav_kaf, presence: true
   validates :secretary, presence: true
   validates :director, presence: true
   
end
