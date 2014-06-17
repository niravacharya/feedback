require 'test_helper'

class CustomerFeedbacksControllerTest < ActionController::TestCase
  setup do
    @customer_feedback = customer_feedbacks(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:customer_feedbacks)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create customer_feedback" do
    assert_difference('CustomerFeedback.count') do
      post :create, customer_feedback: { Name_of_company: @customer_feedback.Name_of_company, address: @customer_feedback.address, age_of_retirement: @customer_feedback.age_of_retirement, economical_liability: @customer_feedback.economical_liability, education: @customer_feedback.education, email: @customer_feedback.email, experience: @customer_feedback.experience, income: @customer_feedback.income, jobpost: @customer_feedback.jobpost, long_term_goals: @customer_feedback.long_term_goals, mobile_number: @customer_feedback.mobile_number, name: @customer_feedback.name, number_of_child: @customer_feedback.number_of_child, occupation: @customer_feedback.occupation, phone_no: @customer_feedback.phone_no, pincode: @customer_feedback.pincode, short_term_goals: @customer_feedback.short_term_goals, years_intend_to_work: @customer_feedback.years_intend_to_work }
    end

    assert_redirected_to customer_feedback_path(assigns(:customer_feedback))
  end

  test "should show customer_feedback" do
    get :show, id: @customer_feedback
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @customer_feedback
    assert_response :success
  end

  test "should update customer_feedback" do
    put :update, id: @customer_feedback, customer_feedback: { Name_of_company: @customer_feedback.Name_of_company, address: @customer_feedback.address, age_of_retirement: @customer_feedback.age_of_retirement, economical_liability: @customer_feedback.economical_liability, education: @customer_feedback.education, email: @customer_feedback.email, experience: @customer_feedback.experience, income: @customer_feedback.income, jobpost: @customer_feedback.jobpost, long_term_goals: @customer_feedback.long_term_goals, mobile_number: @customer_feedback.mobile_number, name: @customer_feedback.name, number_of_child: @customer_feedback.number_of_child, occupation: @customer_feedback.occupation, phone_no: @customer_feedback.phone_no, pincode: @customer_feedback.pincode, short_term_goals: @customer_feedback.short_term_goals, years_intend_to_work: @customer_feedback.years_intend_to_work }
    assert_redirected_to customer_feedback_path(assigns(:customer_feedback))
  end

  test "should destroy customer_feedback" do
    assert_difference('CustomerFeedback.count', -1) do
      delete :destroy, id: @customer_feedback
    end

    assert_redirected_to customer_feedbacks_path
  end
end
