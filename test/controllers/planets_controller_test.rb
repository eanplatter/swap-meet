require 'test_helper'

class PlanetsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @planet = planets(:one)
  end

  test "should get index" do
    get planets_url
    assert_response :success
  end

  test "should get new" do
    get new_planet_url
    assert_response :success
  end

  test "should create planet" do
    assert_difference('Planet.count') do
      post planets_url, params: { planet: { climate: @planet.climate, diameter: @planet.diameter, gravity: @planet.gravity, name: @planet.name, orbital_period: @planet.orbital_period, population: @planet.population, rotation_period: @planet.rotation_period, surface_water: @planet.surface_water, swapi_url: @planet.swapi_url, terrain: @planet.terrain } }
    end

    assert_redirected_to planet_url(Planet.last)
  end

  test "should show planet" do
    get planet_url(@planet)
    assert_response :success
  end

  test "should get edit" do
    get edit_planet_url(@planet)
    assert_response :success
  end

  test "should update planet" do
    patch planet_url(@planet), params: { planet: { climate: @planet.climate, diameter: @planet.diameter, gravity: @planet.gravity, name: @planet.name, orbital_period: @planet.orbital_period, population: @planet.population, rotation_period: @planet.rotation_period, surface_water: @planet.surface_water, swapi_url: @planet.swapi_url, terrain: @planet.terrain } }
    assert_redirected_to planet_url(@planet)
  end

  test "should destroy planet" do
    assert_difference('Planet.count', -1) do
      delete planet_url(@planet)
    end

    assert_redirected_to planets_url
  end
end
