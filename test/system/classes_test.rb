require "application_system_test_case"

class ClassesTest < ApplicationSystemTestCase
  setup do
    @class = classes(:one)
  end

  test "visiting the index" do
    visit classes_url
    assert_selector "h1", text: "Classes"
  end

  test "creating a Classe" do
    visit classes_url
    click_on "New Classe"

    fill_in "Name", with: @class.name
    click_on "Create Classe"

    assert_text "Classe was successfully created"
    click_on "Back"
  end

  test "updating a Classe" do
    visit classes_url
    click_on "Edit", match: :first

    fill_in "Name", with: @class.name
    click_on "Update Classe"

    assert_text "Classe was successfully updated"
    click_on "Back"
  end

  test "destroying a Classe" do
    visit classes_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Classe was successfully destroyed"
  end
end
