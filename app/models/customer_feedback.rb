class CustomerFeedback < ActiveRecord::Base
  attr_accessible :Name_of_company, :address, :dob, :age_of_retirement, :economical_liability, :education, :email, :experience, :income, :jobpost, :long_term_goals, :mobile_number, :name, :number_of_child, :occupation, :phone_no, :pincode, :short_term_goals, :years_intend_to_work
  has_many :childs
  has_one :investment
  has_one :personal_assests
  has_one :planed
  has_many :references
end
