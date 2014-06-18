class Reference < ActiveRecord::Base
  attr_accessible :contact_no, :customer_feedback_id, :name, :relation
  belongs_to :customer_feedback
  accepts_nested_attributes_for :customer_feedback

end
