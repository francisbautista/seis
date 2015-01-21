require 'test_helper'

class TpermitsControllerTest < ActionController::TestCase
  setup do
    @tpermit = tpermits(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tpermits)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create tpermit" do
    assert_difference('Tpermit.count') do
      post :create, tpermit: { amount: @tpermit.amount, date: @tpermit.date, level: @tpermit.level, moral_cert: @tpermit.moral_cert, or_number: @tpermit.or_number, paid_status: @tpermit.paid_status, recommendation: @tpermit.recommendation, remarks: @tpermit.remarks, report_card: @tpermit.report_card, status: @tpermit.status, student_id: @tpermit.student_id, test_date: @tpermit.test_date, test_number: @tpermit.test_number }
    end

    assert_redirected_to tpermit_path(assigns(:tpermit))
  end

  test "should show tpermit" do
    get :show, id: @tpermit
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @tpermit
    assert_response :success
  end

  test "should update tpermit" do
    patch :update, id: @tpermit, tpermit: { amount: @tpermit.amount, date: @tpermit.date, level: @tpermit.level, moral_cert: @tpermit.moral_cert, or_number: @tpermit.or_number, paid_status: @tpermit.paid_status, recommendation: @tpermit.recommendation, remarks: @tpermit.remarks, report_card: @tpermit.report_card, status: @tpermit.status, student_id: @tpermit.student_id, test_date: @tpermit.test_date, test_number: @tpermit.test_number }
    assert_redirected_to tpermit_path(assigns(:tpermit))
  end

  test "should destroy tpermit" do
    assert_difference('Tpermit.count', -1) do
      delete :destroy, id: @tpermit
    end

    assert_redirected_to tpermits_path
  end
end
