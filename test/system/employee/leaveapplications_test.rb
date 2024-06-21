require "application_system_test_case"

class Employee::LeaveapplicationsTest < ApplicationSystemTestCase
  setup do
    @employee_leaveapplication = employee_leaveapplications(:one)
  end

  test "visiting the index" do
    visit employee_leaveapplications_url
    assert_selector "h1", text: "Leaveapplications"
  end

  test "should create leaveapplication" do
    visit employee_leaveapplications_url
    click_on "New leaveapplication"

    fill_in "Employee", with: @employee_leaveapplication.employee_id
    fill_in "End date", with: @employee_leaveapplication.end_date
    fill_in "Leavetype", with: @employee_leaveapplication.leavetype_id
    fill_in "Reason", with: @employee_leaveapplication.reason
    fill_in "Start date", with: @employee_leaveapplication.start_date
    click_on "Create Leaveapplication"

    assert_text "Leaveapplication was successfully created"
    click_on "Back"
  end

  test "should update Leaveapplication" do
    visit employee_leaveapplication_url(@employee_leaveapplication)
    click_on "Edit this leaveapplication", match: :first

    fill_in "Employee", with: @employee_leaveapplication.employee_id
    fill_in "End date", with: @employee_leaveapplication.end_date
    fill_in "Leavetype", with: @employee_leaveapplication.leavetype_id
    fill_in "Reason", with: @employee_leaveapplication.reason
    fill_in "Start date", with: @employee_leaveapplication.start_date
    click_on "Update Leaveapplication"

    assert_text "Leaveapplication was successfully updated"
    click_on "Back"
  end

  test "should destroy Leaveapplication" do
    visit employee_leaveapplication_url(@employee_leaveapplication)
    click_on "Destroy this leaveapplication", match: :first

    assert_text "Leaveapplication was successfully destroyed"
  end
end
