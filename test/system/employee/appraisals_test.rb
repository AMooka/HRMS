require "application_system_test_case"

class Employee::AppraisalsTest < ApplicationSystemTestCase
  setup do
    @employee_appraisal = employee_appraisals(:one)
  end

  test "visiting the index" do
    visit employee_appraisals_url
    assert_selector "h1", text: "Appraisals"
  end

  test "should create appraisal" do
    visit employee_appraisals_url
    click_on "New appraisal"

    click_on "Create Appraisal"

    assert_text "Appraisal was successfully created"
    click_on "Back"
  end

  test "should update Appraisal" do
    visit employee_appraisal_url(@employee_appraisal)
    click_on "Edit this appraisal", match: :first

    click_on "Update Appraisal"

    assert_text "Appraisal was successfully updated"
    click_on "Back"
  end

  test "should destroy Appraisal" do
    visit employee_appraisal_url(@employee_appraisal)
    click_on "Destroy this appraisal", match: :first

    assert_text "Appraisal was successfully destroyed"
  end
end
