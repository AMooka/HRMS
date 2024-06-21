require "application_system_test_case"

class Admin::EmployeesTest < ApplicationSystemTestCase
  setup do
    @admin_employee = admin_employees(:one)
  end

  test "visiting the index" do
    visit admin_employees_url
    assert_selector "h1", text: "Employees"
  end

  test "should create employee" do
    visit admin_employees_url
    click_on "New employee"

    fill_in "Department", with: @admin_employee.department_id
    fill_in "Email", with: @admin_employee.email
    fill_in "First name", with: @admin_employee.first_name
    fill_in "Last name", with: @admin_employee.last_name
    fill_in "Position", with: @admin_employee.position
    click_on "Create Employee"

    assert_text "Employee was successfully created"
    click_on "Back"
  end

  test "should update Employee" do
    visit admin_employee_url(@admin_employee)
    click_on "Edit this employee", match: :first

    fill_in "Department", with: @admin_employee.department_id
    fill_in "Email", with: @admin_employee.email
    fill_in "First name", with: @admin_employee.first_name
    fill_in "Last name", with: @admin_employee.last_name
    fill_in "Position", with: @admin_employee.position
    click_on "Update Employee"

    assert_text "Employee was successfully updated"
    click_on "Back"
  end

  test "should destroy Employee" do
    visit admin_employee_url(@admin_employee)
    click_on "Destroy this employee", match: :first

    assert_text "Employee was successfully destroyed"
  end
end
