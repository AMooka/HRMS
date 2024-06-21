require "test_helper"

class Admin::EmployeesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @admin_employee = admin_employees(:one)
  end

  test "should get index" do
    get admin_employees_url
    assert_response :success
  end

  test "should get new" do
    get new_admin_employee_url
    assert_response :success
  end

  test "should create admin_employee" do
    assert_difference("Admin::Employee.count") do
      post admin_employees_url, params: { admin_employee: { department_id: @admin_employee.department_id, email: @admin_employee.email, first_name: @admin_employee.first_name, last_name: @admin_employee.last_name, position: @admin_employee.position } }
    end

    assert_redirected_to admin_employee_url(Admin::Employee.last)
  end

  test "should show admin_employee" do
    get admin_employee_url(@admin_employee)
    assert_response :success
  end

  test "should get edit" do
    get edit_admin_employee_url(@admin_employee)
    assert_response :success
  end

  test "should update admin_employee" do
    patch admin_employee_url(@admin_employee), params: { admin_employee: { department_id: @admin_employee.department_id, email: @admin_employee.email, first_name: @admin_employee.first_name, last_name: @admin_employee.last_name, position: @admin_employee.position } }
    assert_redirected_to admin_employee_url(@admin_employee)
  end

  test "should destroy admin_employee" do
    assert_difference("Admin::Employee.count", -1) do
      delete admin_employee_url(@admin_employee)
    end

    assert_redirected_to admin_employees_url
  end
end
