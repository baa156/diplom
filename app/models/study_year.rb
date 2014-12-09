class StudyYear < ActiveRecord::Base
  after_initialize :default_values
  has_many :departments
  validates :name, presence: true, uniqueness: true
  validates :is_current, :inclusion => {:in => [true, false]}
  
private
  def default_values
    self.is_current ||= false
  end
  
end  
