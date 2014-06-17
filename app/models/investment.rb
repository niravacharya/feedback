class Investment < ActiveRecord::Base
  attr_accessible :customer_feedback_id, :fd, :gold, :market, :real_estate
  belongs_to :customer_feedback

end
