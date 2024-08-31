require "test_helper"

class RanchesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @ranch = ranches(:one)
  end

  test "should get index" do
    get ranches_url
    assert_response :success
  end

  test "should get new" do
    get new_ranch_url
    assert_response :success
  end

  test "should create ranch" do
    assert_difference("Ranch.count") do
      post ranches_url, params: { ranch: { location: @ranch.location, name: @ranch.name } }
    end

    assert_redirected_to ranch_url(Ranch.last)
  end

  test "should show ranch" do
    get ranch_url(@ranch)
    assert_response :success
  end

  test "should get edit" do
    get edit_ranch_url(@ranch)
    assert_response :success
  end

  test "should update ranch" do
    patch ranch_url(@ranch), params: { ranch: { location: @ranch.location, name: @ranch.name } }
    assert_redirected_to ranch_url(@ranch)
  end

  test "should destroy ranch" do
    assert_difference("Ranch.count", -1) do
      delete ranch_url(@ranch)
    end

    assert_redirected_to ranches_url
  end
end
