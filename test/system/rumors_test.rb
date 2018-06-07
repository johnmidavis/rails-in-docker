require "application_system_test_case"

class RumorsTest < ApplicationSystemTestCase
  setup do
    @rumor = rumors(:one)
  end

  test "visiting the index" do
    visit rumors_url
    assert_selector "h1", text: "Rumors"
  end

  test "creating a Rumor" do
    visit rumors_url
    click_on "New Rumor"

    fill_in "Body", with: @rumor.body
    fill_in "Title", with: @rumor.title
    click_on "Create Rumor"

    assert_text "Rumor was successfully created"
    click_on "Back"
  end

  test "updating a Rumor" do
    visit rumors_url
    click_on "Edit", match: :first

    fill_in "Body", with: @rumor.body
    fill_in "Title", with: @rumor.title
    click_on "Update Rumor"

    assert_text "Rumor was successfully updated"
    click_on "Back"
  end

  test "destroying a Rumor" do
    visit rumors_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Rumor was successfully destroyed"
  end
end
