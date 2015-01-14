require 'test_helper'

class StudentRequirementsControllerTest < ActionController::TestCase
  setup do
    @student_requirement = student_requirements(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:student_requirements)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create student_requirement" do
    assert_difference('StudentRequirement.count') do
      post :create, student_requirement: { status: @student_requirement.status }
    end

    assert_redirected_to student_requirement_path(assigns(:student_requirement))
  end

  test "should show student_requirement" do
    get :show, id: @student_requirement
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @student_requirement
    assert_response :success
  end

  test "should update student_requirement" do
    patch :update, id: @student_requirement, student_requirement: { status: @student_requirement.status }
    assert_redirected_to student_requirement_path(assigns(:student_requirement))
  end

  test "should destroy student_requirement" do
    assert_difference('StudentRequirement.count', -1) do
      delete :destroy, id: @student_requirement
    end

    assert_redirected_to student_requirements_path
  end
end
