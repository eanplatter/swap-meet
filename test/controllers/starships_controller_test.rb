require 'test_helper'

class StarshipsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @starship = starships(:one)
  end

  test "should get index" do
    get starships_url
    assert_response :success
  end

  test "should get new" do
    get new_starship_url
    assert_response :success
  end

  test "should create starship" do
    assert_difference('Starship.count') do
      post starships_url, params: { starship: { MGLT: @starship.MGLT, cargo_capacity: @starship.cargo_capacity, consumables: @starship.consumables, cost_in_credits: @starship.cost_in_credits, crew: @starship.crew, hyperdrive_rating: @starship.hyperdrive_rating, length: @starship.length, manufacturer: @starship.manufacturer, max_atmoshpering_speed: @starship.max_atmoshpering_speed, model: @starship.model, name: @starship.name, passengers: @starship.passengers, starship_class: @starship.starship_class, swapi_url: @starship.swapi_url } }
    end

    assert_redirected_to starship_url(Starship.last)
  end

  test "should show starship" do
    get starship_url(@starship)
    assert_response :success
  end

  test "should get edit" do
    get edit_starship_url(@starship)
    assert_response :success
  end

  test "should update starship" do
    patch starship_url(@starship), params: { starship: { MGLT: @starship.MGLT, cargo_capacity: @starship.cargo_capacity, consumables: @starship.consumables, cost_in_credits: @starship.cost_in_credits, crew: @starship.crew, hyperdrive_rating: @starship.hyperdrive_rating, length: @starship.length, manufacturer: @starship.manufacturer, max_atmoshpering_speed: @starship.max_atmoshpering_speed, model: @starship.model, name: @starship.name, passengers: @starship.passengers, starship_class: @starship.starship_class, swapi_url: @starship.swapi_url } }
    assert_redirected_to starship_url(@starship)
  end

  test "should destroy starship" do
    assert_difference('Starship.count', -1) do
      delete starship_url(@starship)
    end

    assert_redirected_to starships_url
  end
end
