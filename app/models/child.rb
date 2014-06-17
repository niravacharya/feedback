class Child < ActiveRecord::Base
  attr_accessible :child_DOB, :child_age, :customer_feedback_id

  belongs_to :customer_feedback
end
