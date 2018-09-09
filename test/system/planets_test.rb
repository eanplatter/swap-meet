require "application_system_test_case"

class PlanetsTest < ApplicationSystemTestCase
  setup do
    @planet = planets(:one)
  end

  test "visiting the index" do
    visit planets_url
    assert_selector "h1", text: "Planets"
  end

  test "creating a Planet" do
    visit planets_url
    click_on "New Planet"

    fill_in "Climate", with: @planet.climate
    fill_in "Diameter", with: @planet.diameter
    fill_in "Gravity", with: @planet.gravity
    fill_in "Name", with: @planet.name
    fill_in "Orbital Period", with: @planet.orbital_period
    fill_in "Population", with: @planet.population
    fill_in "Rotation Period", with: @planet.rotation_period
    fill_in "Surface Water", with: @planet.surface_water
    fill_in "Swapi Url", with: @planet.swapi_url
    fill_in "Terrain", with: @planet.terrain
    click_on "Create Planet"

    assert_text "Planet was successfully created"
    click_on "Back"
  end

  test "updating a Planet" do
    visit planets_url
    click_on "Edit", match: :first

    fill_in "Climate", with: @planet.climate
    fill_in "Diameter", with: @planet.diameter
    fill_in "Gravity", with: @planet.gravity
    fill_in "Name", with: @planet.name
    fill_in "Orbital Period", with: @planet.orbital_period
    fill_in "Population", with: @planet.population
    fill_in "Rotation Period", with: @planet.rotation_period
    fill_in "Surface Water", with: @planet.surface_water
    fill_in "Swapi Url", with: @planet.swapi_url
    fill_in "Terrain", with: @planet.terrain
    click_on "Update Planet"

    assert_text "Planet was successfully updated"
    click_on "Back"
  end

  test "destroying a Planet" do
    visit planets_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Planet was successfully destroyed"
  end
end
