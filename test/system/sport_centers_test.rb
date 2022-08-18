require "application_system_test_case"

class SportCentersTest < ApplicationSystemTestCase
  setup do
    @sport_center = sport_centers(:one)
  end

  test "visiting the index" do
    visit sport_centers_url
    assert_selector "h1", text: "Sport centers"
  end

  test "should create sport center" do
    visit sport_centers_url
    click_on "New sport center"

    fill_in "Name center", with: @sport_center.name_center
    click_on "Create Sport center"

    assert_text "Sport center was successfully created"
    click_on "Back"
  end

  test "should update Sport center" do
    visit sport_center_url(@sport_center)
    click_on "Edit this sport center", match: :first

    fill_in "Name center", with: @sport_center.name_center
    click_on "Update Sport center"

    assert_text "Sport center was successfully updated"
    click_on "Back"
  end

  test "should destroy Sport center" do
    visit sport_center_url(@sport_center)
    click_on "Destroy this sport center", match: :first

    assert_text "Sport center was successfully destroyed"
  end
end
