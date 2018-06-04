require "application_system_test_case"

class BudetDetailsTest < ApplicationSystemTestCase
  setup do
    @budet_detail = budet_details(:one)
  end

  test "visiting the index" do
    visit budet_details_url
    assert_selector "h1", text: "Budet Details"
  end

  test "creating a Budet detail" do
    visit budet_details_url
    click_on "New Budet Detail"

    fill_in "Amount", with: @budet_detail.amount
    fill_in "Budget", with: @budet_detail.budget_id
    fill_in "Product", with: @budet_detail.product_id
    fill_in "Subtotal", with: @budet_detail.subtotal
    fill_in "Unit Price", with: @budet_detail.unit_price
    click_on "Create Budet detail"

    assert_text "Budet detail was successfully created"
    click_on "Back"
  end

  test "updating a Budet detail" do
    visit budet_details_url
    click_on "Edit", match: :first

    fill_in "Amount", with: @budet_detail.amount
    fill_in "Budget", with: @budet_detail.budget_id
    fill_in "Product", with: @budet_detail.product_id
    fill_in "Subtotal", with: @budet_detail.subtotal
    fill_in "Unit Price", with: @budet_detail.unit_price
    click_on "Update Budet detail"

    assert_text "Budet detail was successfully updated"
    click_on "Back"
  end

  test "destroying a Budet detail" do
    visit budet_details_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Budet detail was successfully destroyed"
  end
end
