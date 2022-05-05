require "application_system_test_case"

class FilmіsTest < ApplicationSystemTestCase
  setup do
    @filmі = filmіs(:one)
  end

  test "visiting the index" do
    visit filmіs_url
    assert_selector "h1", text: "Filmіs"
  end

  test "creating a Filmі" do
    visit filmіs_url
    click_on "New Filmі"

    fill_in "Description", with: @filmі.description
    fill_in "Name", with: @filmі.name
    click_on "Create Filmі"

    assert_text "Filmі was successfully created"
    click_on "Back"
  end

  test "updating a Filmі" do
    visit filmіs_url
    click_on "Edit", match: :first

    fill_in "Description", with: @filmі.description
    fill_in "Name", with: @filmі.name
    click_on "Update Filmі"

    assert_text "Filmі was successfully updated"
    click_on "Back"
  end

  test "destroying a Filmі" do
    visit filmіs_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Filmі was successfully destroyed"
  end
end
