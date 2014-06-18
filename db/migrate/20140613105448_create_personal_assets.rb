class CreatePersonalAssets < ActiveRecord::Migration
  def change
    create_table :personal_assets do |t|
      t.boolean :house_owned
      t.boolean :house_rented
      t.boolean :house_co_provided
      t.boolean :four_wheeler
      t.integer :no_of_four_wheeler
      t.boolean :two_wheeler
      t.integer :no_of_two_wheelers
      t.boolean :no_vehical
      t.integer :customer_feedback_id

      t.timestamps
    end
  end
end
