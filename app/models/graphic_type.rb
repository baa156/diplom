class GraphicType < ActiveRecord::Base
  has_many :graphic
  validates :name, presence: true, uniqueness: true
end
