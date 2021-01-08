require "application_system_test_case"

class LesionsTest < ApplicationSystemTestCase
  setup do
    @lesion = lesions(:one)
  end

  test "visiting the index" do
    visit lesions_url
    assert_selector "h1", text: "Lesions"
  end

  test "creating a Lesion" do
    visit lesions_url
    click_on "New Lesion"

    fill_in "Name", with: @lesion.name
    click_on "Create Lesion"

    assert_text "Lesion was successfully created"
    click_on "Back"
  end

  test "updating a Lesion" do
    visit lesions_url
    click_on "Edit", match: :first

    fill_in "Name", with: @lesion.name
    click_on "Update Lesion"

    assert_text "Lesion was successfully updated"
    click_on "Back"
  end

  test "destroying a Lesion" do
    visit lesions_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Lesion was successfully destroyed"
  end
end
