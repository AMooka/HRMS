require "application_system_test_case"

class Employee::LeaveApplicationsTest < ApplicationSystemTestCase
  setup do
    @employee_leave_application = employee_leave_applications(:one)
  end

  test "visiting the index" do
    visit employee_leave_applications_url
    assert_selector "h1", text: "Leave applications"
  end

  test "should create leave application" do
    visit employee_leave_applications_url
    click_on "New leave application"

    fill_in "Employee", with: @employee_leave_application.employee_id
    fill_in "End date", with: @employee_leave_application.end_date
    fill_in "Leavetype", with: @employee_leave_application.leavetype_id
    fill_in "Reason", with: @employee_leave_application.reason
    fill_in "Start date", with: @employee_leave_application.start_date
    click_on "Create Leave application"

    assert_text "Leave application was successfully created"
    click_on "Back"
  end

  test "should update Leave application" do
    visit employee_leave_application_url(@employee_leave_application)
    click_on "Edit this leave application", match: :first

    fill_in "Employee", with: @employee_leave_application.employee_id
    fill_in "End date", with: @employee_leave_application.end_date
    fill_in "Leavetype", with: @employee_leave_application.leavetype_id
    fill_in "Reason", with: @employee_leave_application.reason
    fill_in "Start date", with: @employee_leave_application.start_date
    click_on "Update Leave application"

    assert_text "Leave application was successfully updated"
    click_on "Back"
  end

  test "should destroy Leave application" do
    visit employee_leave_application_url(@employee_leave_application)
    click_on "Destroy this leave application", match: :first

    assert_text "Leave application was successfully destroyed"
  end
end
