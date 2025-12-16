class Plan < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :park

  has_many :plan_steps
  belongs_to :user
end
