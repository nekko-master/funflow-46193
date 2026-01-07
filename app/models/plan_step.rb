class PlanStep < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :target
  belongs_to :action_type

  belongs_to :plan

  validates :plan_id, presence: true
  validates :step_number, presence: true,
                          presence: true,
                          numericality: { only_integer: true, greater_than: 0 }
  validates :action_type_id, presence: true,
                             presence: true,
                             inclusion: { in: ActionType.all.map(&:id) }
  validates :target_id, presence: true,
                        presence: true,
                        inclusion: { in: Target.all.map(&:id) }
end
