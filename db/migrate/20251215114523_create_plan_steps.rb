class CreatePlanSteps < ActiveRecord::Migration[7.1]
  def change
    create_table :plan_steps do |t|
      t.references  :plan, null: false, foreign_key: true
      t.integer :step_number, null: false
      t.integer :action_type_id, null: false
      t.integer :target_id, null: false
      t.time :time
      t.text :note
      t.timestamps
    end
  end
end
