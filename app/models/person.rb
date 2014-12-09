class Person < ActiveRecord::Base
   belongs_to :department
   has_many :groups
   
   validates :login, presence: true, uniqueness: true
   validates :first_name, presence: true
   validates :last_name, presence: true
   validates :second_name, presence: true
   validates :post, presence: true
end
