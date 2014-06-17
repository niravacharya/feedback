class CreatePlanneds < ActiveRecord::Migration
  def change
    create_table :planneds do |t|
      t.boolean :child_education
      t.boolean :child_marriage
      t.boolean :retirement_fund
      t.integer :customer_feedback_id

      t.timestamps
    end
  end
end
