require "application_system_test_case"

class CustumersTest < ApplicationSystemTestCase
  setup do
    @custumer = custumers(:one)
  end

  test "visiting the index" do
    visit custumers_url
    assert_selector "h1", text: "Custumers"
  end

  test "creating a Custumer" do
    visit custumers_url
    click_on "New Custumer"

    fill_in "Name", with: @custumer.name
    click_on "Create Custumer"

    assert_text "Custumer was successfully created"
    click_on "Back"
  end

  test "updating a Custumer" do
    visit custumers_url
    click_on "Edit", match: :first

    fill_in "Name", with: @custumer.name
    click_on "Update Custumer"

    assert_text "Custumer was successfully updated"
    click_on "Back"
  end

  test "destroying a Custumer" do
    visit custumers_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Custumer was successfully destroyed"
  end
end
