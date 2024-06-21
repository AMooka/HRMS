require "application_system_test_case"

class Admin::JobsTest < ApplicationSystemTestCase
  setup do
    @admin_job = admin_jobs(:one)
  end

  test "visiting the index" do
    visit admin_jobs_url
    assert_selector "h1", text: "Jobs"
  end

  test "should create job" do
    visit admin_jobs_url
    click_on "New job"

    fill_in "Description", with: @admin_job.description
    fill_in "Expiry date", with: @admin_job.expiry_date
    fill_in "Posting date", with: @admin_job.posting_date
    fill_in "Requirements", with: @admin_job.requirements
    fill_in "Roles", with: @admin_job.roles
    fill_in "Title", with: @admin_job.title
    click_on "Create Job"

    assert_text "Job was successfully created"
    click_on "Back"
  end

  test "should update Job" do
    visit admin_job_url(@admin_job)
    click_on "Edit this job", match: :first

    fill_in "Description", with: @admin_job.description
    fill_in "Expiry date", with: @admin_job.expiry_date
    fill_in "Posting date", with: @admin_job.posting_date
    fill_in "Requirements", with: @admin_job.requirements
    fill_in "Roles", with: @admin_job.roles
    fill_in "Title", with: @admin_job.title
    click_on "Update Job"

    assert_text "Job was successfully updated"
    click_on "Back"
  end

  test "should destroy Job" do
    visit admin_job_url(@admin_job)
    click_on "Destroy this job", match: :first

    assert_text "Job was successfully destroyed"
  end
end
