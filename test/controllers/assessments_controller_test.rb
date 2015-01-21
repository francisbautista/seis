require 'test_helper'

class AssessmentsControllerTest < ActionController::TestCase
  setup do
    @assessment = assessments(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:assessments)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create assessment" do
    assert_difference('Assessment.count') do
      post :create, assessment: { discount: @assessment.discount, discount_desc: @assessment.discount_desc, installment: @assessment.installment, installment_number: @assessment.installment_number, mode: @assessment.mode, or_number: @assessment.or_number, student_id: @assessment.student_id, tuition: @assessment.tuition }
    end

    assert_redirected_to assessment_path(assigns(:assessment))
  end

  test "should show assessment" do
    get :show, id: @assessment
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @assessment
    assert_response :success
  end

  test "should update assessment" do
    patch :update, id: @assessment, assessment: { discount: @assessment.discount, discount_desc: @assessment.discount_desc, installment: @assessment.installment, installment_number: @assessment.installment_number, mode: @assessment.mode, or_number: @assessment.or_number, student_id: @assessment.student_id, tuition: @assessment.tuition }
    assert_redirected_to assessment_path(assigns(:assessment))
  end

  test "should destroy assessment" do
    assert_difference('Assessment.count', -1) do
      delete :destroy, id: @assessment
    end

    assert_redirected_to assessments_path
  end
end
