require "test_helper"

class Employee::LeaveapplicationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @employee_leaveapplication = employee_leaveapplications(:one)
  end

  test "should get index" do
    get employee_leaveapplications_url
    assert_response :success
  end

  test "should get new" do
    get new_employee_leaveapplication_url
    assert_response :success
  end

  test "should create employee_leaveapplication" do
    assert_difference("Employee::Leaveapplication.count") do
      post employee_leaveapplications_url, params: { employee_leaveapplication: { employee_id: @employee_leaveapplication.employee_id, end_date: @employee_leaveapplication.end_date, leavetype_id: @employee_leaveapplication.leavetype_id, reason: @employee_leaveapplication.reason, start_date: @employee_leaveapplication.start_date } }
    end

    assert_redirected_to employee_leaveapplication_url(Employee::Leaveapplication.last)
  end

  test "should show employee_leaveapplication" do
    get employee_leaveapplication_url(@employee_leaveapplication)
    assert_response :success
  end

  test "should get edit" do
    get edit_employee_leaveapplication_url(@employee_leaveapplication)
    assert_response :success
  end

  test "should update employee_leaveapplication" do
    patch employee_leaveapplication_url(@employee_leaveapplication), params: { employee_leaveapplication: { employee_id: @employee_leaveapplication.employee_id, end_date: @employee_leaveapplication.end_date, leavetype_id: @employee_leaveapplication.leavetype_id, reason: @employee_leaveapplication.reason, start_date: @employee_leaveapplication.start_date } }
    assert_redirected_to employee_leaveapplication_url(@employee_leaveapplication)
  end

  test "should destroy employee_leaveapplication" do
    assert_difference("Employee::Leaveapplication.count", -1) do
      delete employee_leaveapplication_url(@employee_leaveapplication)
    end

    assert_redirected_to employee_leaveapplications_url
  end
end
