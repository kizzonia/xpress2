require "application_system_test_case"

class TravelsTest < ApplicationSystemTestCase
  setup do
    @travel = travels(:one)
  end

  test "visiting the index" do
    visit travels_url
    assert_selector "h1", text: "Travels"
  end

  test "creating a Travel" do
    visit travels_url
    click_on "New Travel"

    fill_in "Arrivaltime", with: @travel.arrivaltime
    fill_in "Departdate", with: @travel.departdate
    fill_in "Departtime", with: @travel.departtime
    fill_in "Location", with: @travel.location
    fill_in "Order", with: @travel.order_id
    fill_in "Status", with: @travel.status
    fill_in "User", with: @travel.user_id
    click_on "Create Travel"

    assert_text "Travel was successfully created"
    click_on "Back"
  end

  test "updating a Travel" do
    visit travels_url
    click_on "Edit", match: :first

    fill_in "Arrivaltime", with: @travel.arrivaltime
    fill_in "Departdate", with: @travel.departdate
    fill_in "Departtime", with: @travel.departtime
    fill_in "Location", with: @travel.location
    fill_in "Order", with: @travel.order_id
    fill_in "Status", with: @travel.status
    fill_in "User", with: @travel.user_id
    click_on "Update Travel"

    assert_text "Travel was successfully updated"
    click_on "Back"
  end

  test "destroying a Travel" do
    visit travels_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Travel was successfully destroyed"
  end
end
