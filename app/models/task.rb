class Task < ApplicationRecord
  belongs_to :user
  belongs_to :project

  enum status: %i[incomplete started completed]

  validates :description, :due_date, presence: true
  # after_update_status 


  # def methods_name
  #   binding.pry
  # statsus, complted
  #   UserMailer.create_notifivta
  # end
end
