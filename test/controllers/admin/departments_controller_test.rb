require "test_helper"

class Admin::DepartmentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @admin_department = admin_departments(:one)
  end

  test "should get index" do
    get admin_departments_url
    assert_response :success
  end

  test "should get new" do
    get new_admin_department_url
    assert_response :success
  end

  test "should create admin_department" do
    assert_difference("Admin::Department.count") do
      post admin_departments_url, params: { admin_department: { description: @admin_department.description, name: @admin_department.name } }
    end

    assert_redirected_to admin_department_url(Admin::Department.last)
  end

  test "should show admin_department" do
    get admin_department_url(@admin_department)
    assert_response :success
  end

  test "should get edit" do
    get edit_admin_department_url(@admin_department)
    assert_response :success
  end

  test "should update admin_department" do
    patch admin_department_url(@admin_department), params: { admin_department: { description: @admin_department.description, name: @admin_department.name } }
    assert_redirected_to admin_department_url(@admin_department)
  end

  test "should destroy admin_department" do
    assert_difference("Admin::Department.count", -1) do
      delete admin_department_url(@admin_department)
    end

    assert_redirected_to admin_departments_url
  end
end
