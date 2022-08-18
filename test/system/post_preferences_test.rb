require "application_system_test_case"

class PostPreferencesTest < ApplicationSystemTestCase
  setup do
    @post_preference = post_preferences(:one)
  end

  test "visiting the index" do
    visit post_preferences_url
    assert_selector "h1", text: "Post preferences"
  end

  test "should create post preference" do
    visit post_preferences_url
    click_on "New post preference"

    fill_in "Amount players", with: @post_preference.amount_players
    fill_in "Date match", with: @post_preference.date_match
    fill_in "Match length", with: @post_preference.match_length
    fill_in "Post zone code", with: @post_preference.post_zone_code
    click_on "Create Post preference"

    assert_text "Post preference was successfully created"
    click_on "Back"
  end

  test "should update Post preference" do
    visit post_preference_url(@post_preference)
    click_on "Edit this post preference", match: :first

    fill_in "Amount players", with: @post_preference.amount_players
    fill_in "Date match", with: @post_preference.date_match
    fill_in "Match length", with: @post_preference.match_length
    fill_in "Post zone code", with: @post_preference.post_zone_code
    click_on "Update Post preference"

    assert_text "Post preference was successfully updated"
    click_on "Back"
  end

  test "should destroy Post preference" do
    visit post_preference_url(@post_preference)
    click_on "Destroy this post preference", match: :first

    assert_text "Post preference was successfully destroyed"
  end
end
