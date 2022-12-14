require "test_helper"

class ChoicesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @choice = choices(:one)
  end

  test "should get index" do
    get choices_url
    assert_response :success
  end

  test "should get new" do
    get new_choice_url
    assert_response :success
  end

  test "should create choice" do
    assert_difference("Choice.count") do
      post choices_url, params: { choice: { name: @choice.name, question_id: @choice.question_id, votes: @choice.votes } }
    end

    assert_redirected_to choice_url(Choice.last)
  end

  test "should show choice" do
    get choice_url(@choice)
    assert_response :success
  end

  test "should get edit" do
    get edit_choice_url(@choice)
    assert_response :success
  end

  test "should update choice" do
    patch choice_url(@choice), params: { choice: { name: @choice.name, question_id: @choice.question_id, votes: @choice.votes } }
    assert_redirected_to choice_url(@choice)
  end

  test "should destroy choice" do
    assert_difference("Choice.count", -1) do
      delete choice_url(@choice)
    end

    assert_redirected_to choices_url
  end
end
