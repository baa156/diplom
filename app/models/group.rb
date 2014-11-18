class Group < ActiveRecord::Base
  has_many :schedules
  belongs_to :person
end
