require "application_system_test_case"

class Admin::DepartmentsTest < ApplicationSystemTestCase
  setup do
    @admin_department = admin_departments(:one)
  end

  test "visiting the index" do
    visit admin_departments_url
    assert_selector "h1", text: "Departments"
  end

  test "should create department" do
    visit admin_departments_url
    click_on "New department"

    fill_in "Description", with: @admin_department.description
    fill_in "Name", with: @admin_department.name
    click_on "Create Department"

    assert_text "Department was successfully created"
    click_on "Back"
  end

  test "should update Department" do
    visit admin_department_url(@admin_department)
    click_on "Edit this department", match: :first

    fill_in "Description", with: @admin_department.description
    fill_in "Name", with: @admin_department.name
    click_on "Update Department"

    assert_text "Department was successfully updated"
    click_on "Back"
  end

  test "should destroy Department" do
    visit admin_department_url(@admin_department)
    click_on "Destroy this department", match: :first

    assert_text "Department was successfully destroyed"
  end
end
