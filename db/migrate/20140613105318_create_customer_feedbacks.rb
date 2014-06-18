class CreateCustomerFeedbacks < ActiveRecord::Migration
  def change
    create_table :customer_feedbacks do |t|
      t.string :name
      t.string :address
      t.integer :pincode
      t.timestamp :dob
      t.integer :mobile_number
      t.integer :phone_no
      t.string :email
      t.string :education
      t.string :occupation
      t.string :jobpost
      t.string :name_of_company
      t.integer :experience
      t.integer :income
      t.integer :economical_liability
      t.integer :number_of_child
      t.timestamp :client_anniversary_date
      t.string :years_intend_to_work
      t.integer :short_term_goals
      t.integer :long_term_goals
      t.integer :age_of_retirement

      t.timestamps
    end
  end
end
