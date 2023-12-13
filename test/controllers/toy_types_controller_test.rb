require "test_helper"

class ToyTypesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @toy_type = toy_types(:one)
  end

  test "should get index" do
    get toy_types_url
    assert_response :success
  end

  test "should get new" do
    get new_toy_type_url
    assert_response :success
  end

  test "should create toy_type" do
    assert_difference("ToyType.count") do
      post toy_types_url, params: { toy_type: { description: @toy_type.description, name: @toy_type.name } }
    end

    assert_redirected_to toy_type_url(ToyType.last)
  end

  test "should show toy_type" do
    get toy_type_url(@toy_type)
    assert_response :success
  end

  test "should get edit" do
    get edit_toy_type_url(@toy_type)
    assert_response :success
  end

  test "should update toy_type" do
    patch toy_type_url(@toy_type), params: { toy_type: { description: @toy_type.description, name: @toy_type.name } }
    assert_redirected_to toy_type_url(@toy_type)
  end

  test "should destroy toy_type" do
    assert_difference("ToyType.count", -1) do
      delete toy_type_url(@toy_type)
    end

    assert_redirected_to toy_types_url
  end
end
