class Discipline < ActiveRecord::Base
  has_many :schedules
  belongs_to :person
  
  validates :name, presence: true
  validates :subject, presence: true
  validates :semester, presence: true
end
