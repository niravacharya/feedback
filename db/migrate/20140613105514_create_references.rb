class CreateReferences < ActiveRecord::Migration
  def change
    create_table :references do |t|
      t.string :name
      t.integer :contact_no
      t.string :relation
      t.integer :customer_feedback_id

      t.timestamps
    end
  end
end
