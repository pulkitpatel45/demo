class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :tasks
  has_many :projects, through: :tasks
  has_many :daily_status_updates
  after_create :assign_default_role
  enum role: %i[admin employee team_leader project_manager]

  def assign_default_role
    self.role = "employee"
  end
end
