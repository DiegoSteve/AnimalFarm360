require "application_system_test_case"

class CorralsTest < ApplicationSystemTestCase
  setup do
    @corral = corrals(:one)
  end

  test "visiting the index" do
    visit corrals_url
    assert_selector "h1", text: "Corrals"
  end

  test "should create corral" do
    visit corrals_url
    click_on "New corral"

    fill_in "Capacity", with: @corral.capacity
    fill_in "Name", with: @corral.name
    fill_in "Ranch", with: @corral.ranch_id
    fill_in "Tipo", with: @corral.tipo
    click_on "Create Corral"

    assert_text "Corral was successfully created"
    click_on "Back"
  end

  test "should update Corral" do
    visit corral_url(@corral)
    click_on "Edit this corral", match: :first

    fill_in "Capacity", with: @corral.capacity
    fill_in "Name", with: @corral.name
    fill_in "Ranch", with: @corral.ranch_id
    fill_in "Tipo", with: @corral.tipo
    click_on "Update Corral"

    assert_text "Corral was successfully updated"
    click_on "Back"
  end

  test "should destroy Corral" do
    visit corral_url(@corral)
    click_on "Destroy this corral", match: :first

    assert_text "Corral was successfully destroyed"
  end
end
