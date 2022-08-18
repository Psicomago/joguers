require "application_system_test_case"

class UserEvaluationsTest < ApplicationSystemTestCase
  setup do
    @user_evaluation = user_evaluations(:one)
  end

  test "visiting the index" do
    visit user_evaluations_url
    assert_selector "h1", text: "User evaluations"
  end

  test "should create user evaluation" do
    visit user_evaluations_url
    click_on "New user evaluation"

    fill_in "Attendance", with: @user_evaluation.attendance
    fill_in "Cooperation", with: @user_evaluation.cooperation
    fill_in "Puntually", with: @user_evaluation.puntually
    click_on "Create User evaluation"

    assert_text "User evaluation was successfully created"
    click_on "Back"
  end

  test "should update User evaluation" do
    visit user_evaluation_url(@user_evaluation)
    click_on "Edit this user evaluation", match: :first

    fill_in "Attendance", with: @user_evaluation.attendance
    fill_in "Cooperation", with: @user_evaluation.cooperation
    fill_in "Puntually", with: @user_evaluation.puntually
    click_on "Update User evaluation"

    assert_text "User evaluation was successfully updated"
    click_on "Back"
  end

  test "should destroy User evaluation" do
    visit user_evaluation_url(@user_evaluation)
    click_on "Destroy this user evaluation", match: :first

    assert_text "User evaluation was successfully destroyed"
  end
end
