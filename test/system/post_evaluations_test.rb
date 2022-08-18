require "application_system_test_case"

class PostEvaluationsTest < ApplicationSystemTestCase
  setup do
    @post_evaluation = post_evaluations(:one)
  end

  test "visiting the index" do
    visit post_evaluations_url
    assert_selector "h1", text: "Post evaluations"
  end

  test "should create post evaluation" do
    visit post_evaluations_url
    click_on "New post evaluation"

    fill_in "Experience", with: @post_evaluation.experience
    click_on "Create Post evaluation"

    assert_text "Post evaluation was successfully created"
    click_on "Back"
  end

  test "should update Post evaluation" do
    visit post_evaluation_url(@post_evaluation)
    click_on "Edit this post evaluation", match: :first

    fill_in "Experience", with: @post_evaluation.experience
    click_on "Update Post evaluation"

    assert_text "Post evaluation was successfully updated"
    click_on "Back"
  end

  test "should destroy Post evaluation" do
    visit post_evaluation_url(@post_evaluation)
    click_on "Destroy this post evaluation", match: :first

    assert_text "Post evaluation was successfully destroyed"
  end
end
