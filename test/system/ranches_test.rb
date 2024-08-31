require "application_system_test_case"

class RanchesTest < ApplicationSystemTestCase
  setup do
    @ranch = ranches(:one)
  end

  test "visiting the index" do
    visit ranches_url
    assert_selector "h1", text: "Ranches"
  end

  test "should create ranch" do
    visit ranches_url
    click_on "New ranch"

    fill_in "Location", with: @ranch.location
    fill_in "Name", with: @ranch.name
    click_on "Create Ranch"

    assert_text "Ranch was successfully created"
    click_on "Back"
  end

  test "should update Ranch" do
    visit ranch_url(@ranch)
    click_on "Edit this ranch", match: :first

    fill_in "Location", with: @ranch.location
    fill_in "Name", with: @ranch.name
    click_on "Update Ranch"

    assert_text "Ranch was successfully updated"
    click_on "Back"
  end

  test "should destroy Ranch" do
    visit ranch_url(@ranch)
    click_on "Destroy this ranch", match: :first

    assert_text "Ranch was successfully destroyed"
  end
end
