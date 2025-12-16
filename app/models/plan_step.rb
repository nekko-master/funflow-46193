class PlanStep < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :target
  belongs_to :action_type

  belongs_to :plan
end
