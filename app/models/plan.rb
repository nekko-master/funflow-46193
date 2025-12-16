class Plan < ApplicationRecord
  belongs_to :park

  has_many :plan_steps
  belongs_to :user
end
