require "test_helper"

class Employee::EmpAppraisalsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @employee_emp_appraisal = employee_emp_appraisals(:one)
  end

  test "should get index" do
    get employee_emp_appraisals_url
    assert_response :success
  end

  test "should get new" do
    get new_employee_emp_appraisal_url
    assert_response :success
  end

  test "should create employee_emp_appraisal" do
    assert_difference("Employee::EmpAppraisal.count") do
      post employee_emp_appraisals_url, params: { employee_emp_appraisal: { achievement: @employee_emp_appraisal.achievement, additional_comments: @employee_emp_appraisal.additional_comments, area_of_improvement: @employee_emp_appraisal.area_of_improvement, data_of_appraisal: @employee_emp_appraisal.data_of_appraisal, department_id: @employee_emp_appraisal.department_id, employee_id: @employee_emp_appraisal.employee_id, overal_performance: @employee_emp_appraisal.overal_performance, skills: @employee_emp_appraisal.skills, strengths: @employee_emp_appraisal.strengths } }
    end

    assert_redirected_to employee_emp_appraisal_url(Employee::EmpAppraisal.last)
  end

  test "should show employee_emp_appraisal" do
    get employee_emp_appraisal_url(@employee_emp_appraisal)
    assert_response :success
  end

  test "should get edit" do
    get edit_employee_emp_appraisal_url(@employee_emp_appraisal)
    assert_response :success
  end

  test "should update employee_emp_appraisal" do
    patch employee_emp_appraisal_url(@employee_emp_appraisal), params: { employee_emp_appraisal: { achievement: @employee_emp_appraisal.achievement, additional_comments: @employee_emp_appraisal.additional_comments, area_of_improvement: @employee_emp_appraisal.area_of_improvement, data_of_appraisal: @employee_emp_appraisal.data_of_appraisal, department_id: @employee_emp_appraisal.department_id, employee_id: @employee_emp_appraisal.employee_id, overal_performance: @employee_emp_appraisal.overal_performance, skills: @employee_emp_appraisal.skills, strengths: @employee_emp_appraisal.strengths } }
    assert_redirected_to employee_emp_appraisal_url(@employee_emp_appraisal)
  end

  test "should destroy employee_emp_appraisal" do
    assert_difference("Employee::EmpAppraisal.count", -1) do
      delete employee_emp_appraisal_url(@employee_emp_appraisal)
    end

    assert_redirected_to employee_emp_appraisals_url
  end
end
