class Graphic < ActiveRecord::Base
  after_initialize :default_values
  belongs_to :graphic_type
  has_many :schedules
  belongs_to :department
  
  validates :date_from, presence: true
  validates :date_to, presence: true
  validates :is_active, :inclusion => {:in => [true, false]}
  validates :department_id, presence: true
  
private
  def default_values
    self.is_active ||= false
  end    
end
