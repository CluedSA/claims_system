require "application_system_test_case"

class ClaimsTest < ApplicationSystemTestCase
  setup do
    @claim = claims(:one)
  end

  test "visiting the index" do
    visit claims_url
    assert_selector "h1", text: "Claims"
  end

  test "creating a Claim" do
    visit claims_url
    click_on "New Claim"

    fill_in "Claim description", with: @claim.claim_description
    fill_in "Claim number", with: @claim.claim_number
    fill_in "Municipality", with: @claim.municipality_id
    fill_in "Status", with: @claim.status
    click_on "Create Claim"

    assert_text "Claim was successfully created"
    assert_selector "h1", text: "Claims"
  end

  test "updating a Claim" do
    visit claim_url(@claim)
    click_on "Edit", match: :first

    fill_in "Claim description", with: @claim.claim_description
    fill_in "Claim number", with: @claim.claim_number
    fill_in "Municipality", with: @claim.municipality_id
    fill_in "Status", with: @claim.status
    click_on "Update Claim"

    assert_text "Claim was successfully updated"
    assert_selector "h1", text: "Claims"
  end

  test "destroying a Claim" do
    visit edit_claim_url(@claim)
    click_on "Delete", match: :first
    click_on "Confirm"

    assert_text "Claim was successfully destroyed"
  end
end
