class Plan < ApplicationRecord
  belongs_to :park

  has_many :plan_steps
  bolongs_to :user
end
