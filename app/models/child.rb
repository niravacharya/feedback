class Child < ActiveRecord::Base
  attr_accessible :child_dob, :child_age, :customer_feedback_id

  belongs_to :customer_feedback

  accepts_nested_attributes_for :customer_feedback
end
