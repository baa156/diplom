class Schedule < ActiveRecord::Base
  belongs_to :graphic
  belongs_to :group
  has_many :dates_schedules
  has_many :weeks_schedules
end
