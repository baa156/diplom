class Graphic < ActiveRecord::Base
  has_one :graphic_type
  has_many :schedules
  belongs_to :department
end
