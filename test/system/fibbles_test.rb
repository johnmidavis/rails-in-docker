require "application_system_test_case"

class FibblesTest < ApplicationSystemTestCase
  setup do
    @fibble = fibbles(:one)
  end

  test "visiting the index" do
    visit fibbles_url
    assert_selector "h1", text: "Fibbles"
  end

  test "creating a Fibble" do
    visit fibbles_url
    click_on "New Fibble"

    fill_in "Body", with: @fibble.body
    fill_in "Title", with: @fibble.title
    click_on "Create Fibble"

    assert_text "Fibble was successfully created"
    click_on "Back"
  end

  test "updating a Fibble" do
    visit fibbles_url
    click_on "Edit", match: :first

    fill_in "Body", with: @fibble.body
    fill_in "Title", with: @fibble.title
    click_on "Update Fibble"

    assert_text "Fibble was successfully updated"
    click_on "Back"
  end

  test "destroying a Fibble" do
    visit fibbles_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Fibble was successfully destroyed"
  end
end
