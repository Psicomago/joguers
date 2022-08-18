require "test_helper"

class SportCentersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @sport_center = sport_centers(:one)
  end

  test "should get index" do
    get sport_centers_url
    assert_response :success
  end

  test "should get new" do
    get new_sport_center_url
    assert_response :success
  end

  test "should create sport_center" do
    assert_difference("SportCenter.count") do
      post sport_centers_url, params: { sport_center: { name_center: @sport_center.name_center } }
    end

    assert_redirected_to sport_center_url(SportCenter.last)
  end

  test "should show sport_center" do
    get sport_center_url(@sport_center)
    assert_response :success
  end

  test "should get edit" do
    get edit_sport_center_url(@sport_center)
    assert_response :success
  end

  test "should update sport_center" do
    patch sport_center_url(@sport_center), params: { sport_center: { name_center: @sport_center.name_center } }
    assert_redirected_to sport_center_url(@sport_center)
  end

  test "should destroy sport_center" do
    assert_difference("SportCenter.count", -1) do
      delete sport_center_url(@sport_center)
    end

    assert_redirected_to sport_centers_url
  end
end
