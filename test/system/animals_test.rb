require "application_system_test_case"

class AnimalsTest < ApplicationSystemTestCase
  setup do
    @animal = animals(:one)
  end

  test "visiting the index" do
    visit animals_url
    assert_selector "h1", text: "Animals"
  end

  test "should create animal" do
    visit animals_url
    click_on "New animal"

    fill_in "Acquisition date", with: @animal.acquisition_date
    fill_in "Birthdate", with: @animal.birthdate
    fill_in "Breed", with: @animal.breed
    fill_in "Comments", with: @animal.comments
    fill_in "Corral", with: @animal.corral_id
    fill_in "Gender", with: @animal.gender
    fill_in "Health history", with: @animal.health_history
    fill_in "Initial weight", with: @animal.initial_weight
    fill_in "Production", with: @animal.production
    fill_in "Ranch", with: @animal.ranch_id
    fill_in "Species", with: @animal.species
    fill_in "Status", with: @animal.status
    fill_in "Supplier", with: @animal.supplier
    click_on "Create Animal"

    assert_text "Animal was successfully created"
    click_on "Back"
  end

  test "should update Animal" do
    visit animal_url(@animal)
    click_on "Edit this animal", match: :first

    fill_in "Acquisition date", with: @animal.acquisition_date
    fill_in "Birthdate", with: @animal.birthdate
    fill_in "Breed", with: @animal.breed
    fill_in "Comments", with: @animal.comments
    fill_in "Corral", with: @animal.corral_id
    fill_in "Gender", with: @animal.gender
    fill_in "Health history", with: @animal.health_history
    fill_in "Initial weight", with: @animal.initial_weight
    fill_in "Production", with: @animal.production
    fill_in "Ranch", with: @animal.ranch_id
    fill_in "Species", with: @animal.species
    fill_in "Status", with: @animal.status
    fill_in "Supplier", with: @animal.supplier
    click_on "Update Animal"

    assert_text "Animal was successfully updated"
    click_on "Back"
  end

  test "should destroy Animal" do
    visit animal_url(@animal)
    click_on "Destroy this animal", match: :first

    assert_text "Animal was successfully destroyed"
  end
end
