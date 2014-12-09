class WeeksSchedule < ActiveRecord::Base
  belongs_to :schedule
  
  validates :day, presence: true, :inclusion => {:in => [1,2,3,4,5,6,7]}
  validates :classroom, presence: true
  validates :week_type, presence: true, :inclusion => {:in => [1,2,3]}
  validates :date_from, presence: true
  validates :date_to, presence: true
  validates :time_p, presence: true

end
