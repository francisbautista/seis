require 'test_helper'

class StudentsControllerTest < ActionController::TestCase
  setup do
    @student = students(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:students)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create student" do
    assert_difference('Student.count') do
      post :create, student: { admission_date: @student.admission_date, barangay: @student.barangay, batch_number: @student.batch_number, birth_place: @student.birth_place, birthdate: @student.birthdate, city: @student.city, country: @student.country, email: @student.email, first_name: @student.first_name, gender: @student.gender, general_avg: @student.general_avg, grade: @student.grade, id_number: @student.id_number, institution_name: @student.institution_name, lancaster_resident: @student.lancaster_resident, landline: @student.landline, last_name: @student.last_name, middle_name: @student.middle_name, mobile: @student.mobile, nationality: @student.nationality, postal_code: @student.postal_code, religion: @student.religion, school_year: @student.school_year, section: @student.section, street: @student.street, year_level: @student.year_level, year_level: @student.year_level }
    end

    assert_redirected_to student_path(assigns(:student))
  end

  test "should show student" do
    get :show, id: @student
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @student
    assert_response :success
  end

  test "should update student" do
    patch :update, id: @student, student: { admission_date: @student.admission_date, barangay: @student.barangay, batch_number: @student.batch_number, birth_place: @student.birth_place, birthdate: @student.birthdate, city: @student.city, country: @student.country, email: @student.email, first_name: @student.first_name, gender: @student.gender, general_avg: @student.general_avg, grade: @student.grade, id_number: @student.id_number, institution_name: @student.institution_name, lancaster_resident: @student.lancaster_resident, landline: @student.landline, last_name: @student.last_name, middle_name: @student.middle_name, mobile: @student.mobile, nationality: @student.nationality, postal_code: @student.postal_code, religion: @student.religion, school_year: @student.school_year, section: @student.section, street: @student.street, year_level: @student.year_level, year_level: @student.year_level }
    assert_redirected_to student_path(assigns(:student))
  end

  test "should destroy student" do
    assert_difference('Student.count', -1) do
      delete :destroy, id: @student
    end

    assert_redirected_to students_path
  end
end
