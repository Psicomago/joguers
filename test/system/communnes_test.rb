require "application_system_test_case"

class CommunnesTest < ApplicationSystemTestCase
  setup do
    @communne = communnes(:one)
  end

  test "visiting the index" do
    visit communnes_url
    assert_selector "h1", text: "Communnes"
  end

  test "should create communne" do
    visit communnes_url
    click_on "New communne"

    fill_in "Communne code", with: @communne.communne_code
    fill_in "Communne name", with: @communne.communne_name
    click_on "Create Communne"

    assert_text "Communne was successfully created"
    click_on "Back"
  end

  test "should update Communne" do
    visit communne_url(@communne)
    click_on "Edit this communne", match: :first

    fill_in "Communne code", with: @communne.communne_code
    fill_in "Communne name", with: @communne.communne_name
    click_on "Update Communne"

    assert_text "Communne was successfully updated"
    click_on "Back"
  end

  test "should destroy Communne" do
    visit communne_url(@communne)
    click_on "Destroy this communne", match: :first

    assert_text "Communne was successfully destroyed"
  end
end
