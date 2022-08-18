require "application_system_test_case"

class UserPreferencesTest < ApplicationSystemTestCase
  setup do
    @user_preference = user_preferences(:one)
  end

  test "visiting the index" do
    visit user_preferences_url
    assert_selector "h1", text: "User preferences"
  end

  test "should create user preference" do
    visit user_preferences_url
    click_on "New user preference"

    fill_in "Game position", with: @user_preference.game_position
    fill_in "Notification", with: @user_preference.notification
    fill_in "Notify", with: @user_preference.notify
    fill_in "Play zone", with: @user_preference.play_zone
    fill_in "Play zone code", with: @user_preference.play_zone_code
    fill_in "Status", with: @user_preference.status
    click_on "Create User preference"

    assert_text "User preference was successfully created"
    click_on "Back"
  end

  test "should update User preference" do
    visit user_preference_url(@user_preference)
    click_on "Edit this user preference", match: :first

    fill_in "Game position", with: @user_preference.game_position
    fill_in "Notification", with: @user_preference.notification
    fill_in "Notify", with: @user_preference.notify
    fill_in "Play zone", with: @user_preference.play_zone
    fill_in "Play zone code", with: @user_preference.play_zone_code
    fill_in "Status", with: @user_preference.status
    click_on "Update User preference"

    assert_text "User preference was successfully updated"
    click_on "Back"
  end

  test "should destroy User preference" do
    visit user_preference_url(@user_preference)
    click_on "Destroy this user preference", match: :first

    assert_text "User preference was successfully destroyed"
  end
end
