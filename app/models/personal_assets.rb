class PersonalAssets < ActiveRecord::Base
  attr_accessible :two_wheeler, :four_wheeler, :customer_feedback_id, :house_co_provided, :house_owned, :house_rented, :no_of_two_wheelers, :no_of_four_wheeler, :no_vehical
  belongs_to :customer_feedback
  accepts_nested_attributes_for :customer_feedback

end
