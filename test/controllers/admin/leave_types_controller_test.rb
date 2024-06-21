require "test_helper"

class Admin::LeaveTypesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @admin_leave_type = admin_leave_types(:one)
  end

  test "should get index" do
    get admin_leave_types_url
    assert_response :success
  end

  test "should get new" do
    get new_admin_leave_type_url
    assert_response :success
  end

  test "should create admin_leave_type" do
    assert_difference("Admin::LeaveType.count") do
      post admin_leave_types_url, params: { admin_leave_type: { description: @admin_leave_type.description, name: @admin_leave_type.name } }
    end

    assert_redirected_to admin_leave_type_url(Admin::LeaveType.last)
  end

  test "should show admin_leave_type" do
    get admin_leave_type_url(@admin_leave_type)
    assert_response :success
  end

  test "should get edit" do
    get edit_admin_leave_type_url(@admin_leave_type)
    assert_response :success
  end

  test "should update admin_leave_type" do
    patch admin_leave_type_url(@admin_leave_type), params: { admin_leave_type: { description: @admin_leave_type.description, name: @admin_leave_type.name } }
    assert_redirected_to admin_leave_type_url(@admin_leave_type)
  end

  test "should destroy admin_leave_type" do
    assert_difference("Admin::LeaveType.count", -1) do
      delete admin_leave_type_url(@admin_leave_type)
    end

    assert_redirected_to admin_leave_types_url
  end
end
