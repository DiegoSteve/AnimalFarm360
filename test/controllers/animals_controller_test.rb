require "test_helper"

class AnimalsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @animal = animals(:one)
  end

  test "should get index" do
    get animals_url
    assert_response :success
  end

  test "should get new" do
    get new_animal_url
    assert_response :success
  end

  test "should create animal" do
    assert_difference("Animal.count") do
      post animals_url, params: { animal: { acquisition_date: @animal.acquisition_date, birthdate: @animal.birthdate, breed: @animal.breed, comments: @animal.comments, corral_id: @animal.corral_id, gender: @animal.gender, health_history: @animal.health_history, initial_weight: @animal.initial_weight, production: @animal.production, ranch_id: @animal.ranch_id, species: @animal.species, status: @animal.status, supplier: @animal.supplier } }
    end

    assert_redirected_to animal_url(Animal.last)
  end

  test "should show animal" do
    get animal_url(@animal)
    assert_response :success
  end

  test "should get edit" do
    get edit_animal_url(@animal)
    assert_response :success
  end

  test "should update animal" do
    patch animal_url(@animal), params: { animal: { acquisition_date: @animal.acquisition_date, birthdate: @animal.birthdate, breed: @animal.breed, comments: @animal.comments, corral_id: @animal.corral_id, gender: @animal.gender, health_history: @animal.health_history, initial_weight: @animal.initial_weight, production: @animal.production, ranch_id: @animal.ranch_id, species: @animal.species, status: @animal.status, supplier: @animal.supplier } }
    assert_redirected_to animal_url(@animal)
  end

  test "should destroy animal" do
    assert_difference("Animal.count", -1) do
      delete animal_url(@animal)
    end

    assert_redirected_to animals_url
  end
end
