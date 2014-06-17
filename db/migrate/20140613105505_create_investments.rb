class CreateInvestments < ActiveRecord::Migration
  def change
    create_table :investments do |t|
      t.integer :fd
      t.integer :market
      t.integer :gold
      t.integer :real_estate
      t.integer :customer_feedback_id

      t.timestamps
    end
  end
end
