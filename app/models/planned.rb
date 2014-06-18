class Planned < ActiveRecord::Base
  attr_accessible :child_education, :child_marriage, :customer_feedback_id, :retirement_fund
  belongs_to :customer_feedback
  accepts_nested_attributes_for :customer_feedback

end
