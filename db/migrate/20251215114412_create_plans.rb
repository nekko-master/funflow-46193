class CreatePlans < ActiveRecord::Migration[7.1]
  def change
    create_table :plans do |t|
      t.references :user, null: false, foreign_key: true
      t.integer :park_id, null: false
      t.date :date, null: false
      t.timestamps
    end
  end
end
