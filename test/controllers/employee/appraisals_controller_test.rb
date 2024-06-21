require "test_helper"

class Employee::AppraisalsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @employee_appraisal = employee_appraisals(:one)
  end

  test "should get index" do
    get employee_appraisals_url
    assert_response :success
  end

  test "should get new" do
    get new_employee_appraisal_url
    assert_response :success
  end

  test "should create employee_appraisal" do
    assert_difference("Employee::Appraisal.count") do
      post employee_appraisals_url, params: { employee_appraisal: {  } }
    end

    assert_redirected_to employee_appraisal_url(Employee::Appraisal.last)
  end

  test "should show employee_appraisal" do
    get employee_appraisal_url(@employee_appraisal)
    assert_response :success
  end

  test "should get edit" do
    get edit_employee_appraisal_url(@employee_appraisal)
    assert_response :success
  end

  test "should update employee_appraisal" do
    patch employee_appraisal_url(@employee_appraisal), params: { employee_appraisal: {  } }
    assert_redirected_to employee_appraisal_url(@employee_appraisal)
  end

  test "should destroy employee_appraisal" do
    assert_difference("Employee::Appraisal.count", -1) do
      delete employee_appraisal_url(@employee_appraisal)
    end

    assert_redirected_to employee_appraisals_url
  end
end
