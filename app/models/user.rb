class User < ActiveRecord::Base
  authenticates_with_sorcery!
  validates :username, presence: true, uniqueness: true
  validates :password, length: { minimum: 3 }
  validates :password, confirmation: true
  validates :password_confirmation, presence: true

  has_and_belongs_to_many :departmants
  after_initialize :default_values

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :second_name, presence: true

  validates :is_operator, :inclusion => {:in => [true, false]}
  validates :is_admin, :inclusion => {:in => [true, false]}

  private
  def default_values
    self.is_operator ||= false
    self.is_admin ||= false
  end
end
