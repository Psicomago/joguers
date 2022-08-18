require "test_helper"

class PostPreferencesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @post_preference = post_preferences(:one)
  end

  test "should get index" do
    get post_preferences_url
    assert_response :success
  end

  test "should get new" do
    get new_post_preference_url
    assert_response :success
  end

  test "should create post_preference" do
    assert_difference("PostPreference.count") do
      post post_preferences_url, params: { post_preference: { amount_players: @post_preference.amount_players, date_match: @post_preference.date_match, match_length: @post_preference.match_length, post_zone_code: @post_preference.post_zone_code } }
    end

    assert_redirected_to post_preference_url(PostPreference.last)
  end

  test "should show post_preference" do
    get post_preference_url(@post_preference)
    assert_response :success
  end

  test "should get edit" do
    get edit_post_preference_url(@post_preference)
    assert_response :success
  end

  test "should update post_preference" do
    patch post_preference_url(@post_preference), params: { post_preference: { amount_players: @post_preference.amount_players, date_match: @post_preference.date_match, match_length: @post_preference.match_length, post_zone_code: @post_preference.post_zone_code } }
    assert_redirected_to post_preference_url(@post_preference)
  end

  test "should destroy post_preference" do
    assert_difference("PostPreference.count", -1) do
      delete post_preference_url(@post_preference)
    end

    assert_redirected_to post_preferences_url
  end
end
