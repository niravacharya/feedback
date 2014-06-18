class CustomerFeedback < ActiveRecord::Base
  attr_accessible :name_of_company, :address, :dob, :age_of_retirement,:client_anniversary_date, :economical_liability, :education, :email, :experience, :income, :jobpost, :long_term_goals, :mobile_number, :name, :number_of_child, :occupation, :phone_no, :pincode, :short_term_goals, :years_intend_to_work
  has_many :children
  has_many :investments
  has_many :personal_assets
  has_many :planneds
  has_many :references
  attr_accessible :children_attributes, :personal_assets_attributes, :planneds_attributes, :investments_attributes, :references_attributes
  accepts_nested_attributes_for :children, :personal_assets, :planneds, :investments, :references

end
