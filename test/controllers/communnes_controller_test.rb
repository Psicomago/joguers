require "test_helper"

class CommunnesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @communne = communnes(:one)
  end

  test "should get index" do
    get communnes_url
    assert_response :success
  end

  test "should get new" do
    get new_communne_url
    assert_response :success
  end

  test "should create communne" do
    assert_difference("Communne.count") do
      post communnes_url, params: { communne: { communne_code: @communne.communne_code, communne_name: @communne.communne_name } }
    end

    assert_redirected_to communne_url(Communne.last)
  end

  test "should show communne" do
    get communne_url(@communne)
    assert_response :success
  end

  test "should get edit" do
    get edit_communne_url(@communne)
    assert_response :success
  end

  test "should update communne" do
    patch communne_url(@communne), params: { communne: { communne_code: @communne.communne_code, communne_name: @communne.communne_name } }
    assert_redirected_to communne_url(@communne)
  end

  test "should destroy communne" do
    assert_difference("Communne.count", -1) do
      delete communne_url(@communne)
    end

    assert_redirected_to communnes_url
  end
end
