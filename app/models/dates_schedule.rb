class DatesSchedule < ActiveRecord::Base
  belongs_to :schedule
  validates :classroom, presence: true
  validates :timestamp, presence: true
  
end
