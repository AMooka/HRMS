require "application_system_test_case"

class Employee::EmpAppraisalsTest < ApplicationSystemTestCase
  setup do
    @employee_emp_appraisal = employee_emp_appraisals(:one)
  end

  test "visiting the index" do
    visit employee_emp_appraisals_url
    assert_selector "h1", text: "Emp appraisals"
  end

  test "should create emp appraisal" do
    visit employee_emp_appraisals_url
    click_on "New emp appraisal"

    fill_in "Achievement", with: @employee_emp_appraisal.achievement
    fill_in "Additional comments", with: @employee_emp_appraisal.additional_comments
    fill_in "Area of improvement", with: @employee_emp_appraisal.area_of_improvement
    fill_in "Data of appraisal", with: @employee_emp_appraisal.data_of_appraisal
    fill_in "Department", with: @employee_emp_appraisal.department_id
    fill_in "Employee", with: @employee_emp_appraisal.employee_id
    fill_in "Overal performance", with: @employee_emp_appraisal.overal_performance
    fill_in "Skills", with: @employee_emp_appraisal.skills
    fill_in "Strengths", with: @employee_emp_appraisal.strengths
    click_on "Create Emp appraisal"

    assert_text "Emp appraisal was successfully created"
    click_on "Back"
  end

  test "should update Emp appraisal" do
    visit employee_emp_appraisal_url(@employee_emp_appraisal)
    click_on "Edit this emp appraisal", match: :first

    fill_in "Achievement", with: @employee_emp_appraisal.achievement
    fill_in "Additional comments", with: @employee_emp_appraisal.additional_comments
    fill_in "Area of improvement", with: @employee_emp_appraisal.area_of_improvement
    fill_in "Data of appraisal", with: @employee_emp_appraisal.data_of_appraisal
    fill_in "Department", with: @employee_emp_appraisal.department_id
    fill_in "Employee", with: @employee_emp_appraisal.employee_id
    fill_in "Overal performance", with: @employee_emp_appraisal.overal_performance
    fill_in "Skills", with: @employee_emp_appraisal.skills
    fill_in "Strengths", with: @employee_emp_appraisal.strengths
    click_on "Update Emp appraisal"

    assert_text "Emp appraisal was successfully updated"
    click_on "Back"
  end

  test "should destroy Emp appraisal" do
    visit employee_emp_appraisal_url(@employee_emp_appraisal)
    click_on "Destroy this emp appraisal", match: :first

    assert_text "Emp appraisal was successfully destroyed"
  end
end
