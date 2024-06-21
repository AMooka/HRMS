require "application_system_test_case"

class Admin::LeaveTypesTest < ApplicationSystemTestCase
  setup do
    @admin_leave_type = admin_leave_types(:one)
  end

  test "visiting the index" do
    visit admin_leave_types_url
    assert_selector "h1", text: "Leave types"
  end

  test "should create leave type" do
    visit admin_leave_types_url
    click_on "New leave type"

    fill_in "Description", with: @admin_leave_type.description
    fill_in "Name", with: @admin_leave_type.name
    click_on "Create Leave type"

    assert_text "Leave type was successfully created"
    click_on "Back"
  end

  test "should update Leave type" do
    visit admin_leave_type_url(@admin_leave_type)
    click_on "Edit this leave type", match: :first

    fill_in "Description", with: @admin_leave_type.description
    fill_in "Name", with: @admin_leave_type.name
    click_on "Update Leave type"

    assert_text "Leave type was successfully updated"
    click_on "Back"
  end

  test "should destroy Leave type" do
    visit admin_leave_type_url(@admin_leave_type)
    click_on "Destroy this leave type", match: :first

    assert_text "Leave type was successfully destroyed"
  end
end
