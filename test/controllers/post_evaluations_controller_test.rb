require "test_helper"

class PostEvaluationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @post_evaluation = post_evaluations(:one)
  end

  test "should get index" do
    get post_evaluations_url
    assert_response :success
  end

  test "should get new" do
    get new_post_evaluation_url
    assert_response :success
  end

  test "should create post_evaluation" do
    assert_difference("PostEvaluation.count") do
      post post_evaluations_url, params: { post_evaluation: { experience: @post_evaluation.experience } }
    end

    assert_redirected_to post_evaluation_url(PostEvaluation.last)
  end

  test "should show post_evaluation" do
    get post_evaluation_url(@post_evaluation)
    assert_response :success
  end

  test "should get edit" do
    get edit_post_evaluation_url(@post_evaluation)
    assert_response :success
  end

  test "should update post_evaluation" do
    patch post_evaluation_url(@post_evaluation), params: { post_evaluation: { experience: @post_evaluation.experience } }
    assert_redirected_to post_evaluation_url(@post_evaluation)
  end

  test "should destroy post_evaluation" do
    assert_difference("PostEvaluation.count", -1) do
      delete post_evaluation_url(@post_evaluation)
    end

    assert_redirected_to post_evaluations_url
  end
end
