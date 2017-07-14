require 'test_helper'

class ClassmentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @classment = classments(:one)
  end

  test "should get index" do
    get classments_url
    assert_response :success
  end

  test "should get new" do
    get new_classment_url
    assert_response :success
  end

  test "should create classment" do
    assert_difference('Classment.count') do
      post classments_url, params: { classment: { born: @classment.born, mobileno: @classment.mobileno, name: @classment.name } }
    end

    assert_redirected_to classment_url(Classment.last)
  end

  test "should show classment" do
    get classment_url(@classment)
    assert_response :success
  end

  test "should get edit" do
    get edit_classment_url(@classment)
    assert_response :success
  end

  test "should update classment" do
    patch classment_url(@classment), params: { classment: { born: @classment.born, mobileno: @classment.mobileno, name: @classment.name } }
    assert_redirected_to classment_url(@classment)
  end

  test "should destroy classment" do
    assert_difference('Classment.count', -1) do
      delete classment_url(@classment)
    end

    assert_redirected_to classments_url
  end
end
