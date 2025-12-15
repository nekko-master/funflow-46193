class CreatePlanSteps < ActiveRecord::Migration[7.1]
  def change
    create_table :plan_steps do |t|

      t.timestamps
    end
  end
end
