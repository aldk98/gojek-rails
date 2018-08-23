require "application_system_test_case"

class MakanansTest < ApplicationSystemTestCase
  setup do
    @makanan = makanans(:one)
  end

  test "visiting the index" do
    visit makanans_url
    assert_selector "h1", text: "Makanans"
  end

  test "creating a Makanan" do
    visit makanans_url
    click_on "New Makanan"

    click_on "Create Makanan"

    assert_text "Makanan was successfully created"
    click_on "Back"
  end

  test "updating a Makanan" do
    visit makanans_url
    click_on "Edit", match: :first

    click_on "Update Makanan"

    assert_text "Makanan was successfully updated"
    click_on "Back"
  end

  test "destroying a Makanan" do
    visit makanans_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Makanan was successfully destroyed"
  end
end
