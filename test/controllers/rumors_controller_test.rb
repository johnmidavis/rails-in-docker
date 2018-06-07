require 'test_helper'

class RumorsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @rumor = rumors(:one)
  end

  test "should get index" do
    get rumors_url
    assert_response :success
  end

  test "should get new" do
    get new_rumor_url
    assert_response :success
  end

  test "should create rumor" do
    assert_difference('Rumor.count') do
      post rumors_url, params: { rumor: { body: @rumor.body, title: @rumor.title } }
    end

    assert_redirected_to rumor_url(Rumor.last)
  end

  test "should show rumor" do
    get rumor_url(@rumor)
    assert_response :success
  end

  test "should get edit" do
    get edit_rumor_url(@rumor)
    assert_response :success
  end

  test "should update rumor" do
    patch rumor_url(@rumor), params: { rumor: { body: @rumor.body, title: @rumor.title } }
    assert_redirected_to rumor_url(@rumor)
  end

  test "should destroy rumor" do
    assert_difference('Rumor.count', -1) do
      delete rumor_url(@rumor)
    end

    assert_redirected_to rumors_url
  end
end
