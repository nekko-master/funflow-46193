class Plan < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :park

  has_many :plan_steps, dependent: :destroy
  belongs_to :user
  
  validates :park_id, presence: true
  validates :date, presence: true
end
