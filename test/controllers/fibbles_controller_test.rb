require 'test_helper'

class FibblesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @fibble = fibbles(:one)
  end

  test "should get index" do
    get fibbles_url
    assert_response :success
  end

  test "should get new" do
    get new_fibble_url
    assert_response :success
  end

  test "should create fibble" do
    assert_difference('Fibble.count') do
      post fibbles_url, params: { fibble: { body: @fibble.body, title: @fibble.title } }
    end

    assert_redirected_to fibble_url(Fibble.last)
  end

  test "should show fibble" do
    get fibble_url(@fibble)
    assert_response :success
  end

  test "should get edit" do
    get edit_fibble_url(@fibble)
    assert_response :success
  end

  test "should update fibble" do
    patch fibble_url(@fibble), params: { fibble: { body: @fibble.body, title: @fibble.title } }
    assert_redirected_to fibble_url(@fibble)
  end

  test "should destroy fibble" do
    assert_difference('Fibble.count', -1) do
      delete fibble_url(@fibble)
    end

    assert_redirected_to fibbles_url
  end
end
