require 'test_helper'

class ParentsControllerTest < ActionController::TestCase
  setup do
    @parent = parents(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:parents)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create parent" do
    assert_difference('Parent.count') do
      post :create, parent: { barangay: @parent.barangay, birthdate: @parent.birthdate, city: @parent.city, country: @parent.country, email: @parent.email, first_name: @parent.first_name, landline: @parent.landline, last_name: @parent.last_name, middle_name: @parent.middle_name, mobile: @parent.mobile, occupation: @parent.occupation, relation: @parent.relation, street: @parent.street }
    end

    assert_redirected_to parent_path(assigns(:parent))
  end

  test "should show parent" do
    get :show, id: @parent
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @parent
    assert_response :success
  end

  test "should update parent" do
    patch :update, id: @parent, parent: { barangay: @parent.barangay, birthdate: @parent.birthdate, city: @parent.city, country: @parent.country, email: @parent.email, first_name: @parent.first_name, landline: @parent.landline, last_name: @parent.last_name, middle_name: @parent.middle_name, mobile: @parent.mobile, occupation: @parent.occupation, relation: @parent.relation, street: @parent.street }
    assert_redirected_to parent_path(assigns(:parent))
  end

  test "should destroy parent" do
    assert_difference('Parent.count', -1) do
      delete :destroy, id: @parent
    end

    assert_redirected_to parents_path
  end
end
