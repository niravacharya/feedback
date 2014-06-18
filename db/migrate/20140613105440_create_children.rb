class CreateChildren < ActiveRecord::Migration
  def change
    create_table :children do |t|
      t.integer :child_age
      t.datetime :child_dob
      t.integer :customer_feedback_id

      t.timestamps
    end
  end
end
