require "test_helper"

class CorralsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @corral = corrals(:one)
  end

  test "should get index" do
    get corrals_url
    assert_response :success
  end

  test "should get new" do
    get new_corral_url
    assert_response :success
  end

  test "should create corral" do
    assert_difference("Corral.count") do
      post corrals_url, params: { corral: { capacity: @corral.capacity, name: @corral.name, ranch_id: @corral.ranch_id, tipo: @corral.tipo } }
    end

    assert_redirected_to corral_url(Corral.last)
  end

  test "should show corral" do
    get corral_url(@corral)
    assert_response :success
  end

  test "should get edit" do
    get edit_corral_url(@corral)
    assert_response :success
  end

  test "should update corral" do
    patch corral_url(@corral), params: { corral: { capacity: @corral.capacity, name: @corral.name, ranch_id: @corral.ranch_id, tipo: @corral.tipo } }
    assert_redirected_to corral_url(@corral)
  end

  test "should destroy corral" do
    assert_difference("Corral.count", -1) do
      delete corral_url(@corral)
    end

    assert_redirected_to corrals_url
  end
end
