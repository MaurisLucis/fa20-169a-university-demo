require 'test_helper'

class UniversityControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get university_index_url
    assert_response :success
  end

  test "should get new" do
    get university_new_url
    assert_response :success
  end

  test "should get create" do
    get university_create_url
    assert_response :success
  end

  test "should get show" do
    get university_show_url
    assert_response :success
  end

  test "should get edit" do
    get university_edit_url
    assert_response :success
  end

  test "should get update" do
    get university_update_url
    assert_response :success
  end

  test "should get delete" do
    get university_delete_url
    assert_response :success
  end

end
