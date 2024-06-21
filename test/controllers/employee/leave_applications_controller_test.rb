require "test_helper"

class Employee::LeaveApplicationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @employee_leave_application = employee_leave_applications(:one)
  end

  test "should get index" do
    get employee_leave_applications_url
    assert_response :success
  end

  test "should get new" do
    get new_employee_leave_application_url
    assert_response :success
  end

  test "should create employee_leave_application" do
    assert_difference("Employee::LeaveApplication.count") do
      post employee_leave_applications_url, params: { employee_leave_application: { employee_id: @employee_leave_application.employee_id, end_date: @employee_leave_application.end_date, leavetype_id: @employee_leave_application.leavetype_id, reason: @employee_leave_application.reason, start_date: @employee_leave_application.start_date } }
    end

    assert_redirected_to employee_leave_application_url(Employee::LeaveApplication.last)
  end

  test "should show employee_leave_application" do
    get employee_leave_application_url(@employee_leave_application)
    assert_response :success
  end

  test "should get edit" do
    get edit_employee_leave_application_url(@employee_leave_application)
    assert_response :success
  end

  test "should update employee_leave_application" do
    patch employee_leave_application_url(@employee_leave_application), params: { employee_leave_application: { employee_id: @employee_leave_application.employee_id, end_date: @employee_leave_application.end_date, leavetype_id: @employee_leave_application.leavetype_id, reason: @employee_leave_application.reason, start_date: @employee_leave_application.start_date } }
    assert_redirected_to employee_leave_application_url(@employee_leave_application)
  end

  test "should destroy employee_leave_application" do
    assert_difference("Employee::LeaveApplication.count", -1) do
      delete employee_leave_application_url(@employee_leave_application)
    end

    assert_redirected_to employee_leave_applications_url
  end
end
