require "application_system_test_case"

class VehiclesTest < ApplicationSystemTestCase
  setup do
    @vehicle = vehicles(:one)
  end

  test "visiting the index" do
    visit vehicles_url
    assert_selector "h1", text: "Vehicles"
  end

  test "creating a Vehicle" do
    visit vehicles_url
    click_on "New Vehicle"

    fill_in "Cargo Capacity", with: @vehicle.cargo_capacity
    fill_in "Consumables", with: @vehicle.consumables
    fill_in "Cost In Credits", with: @vehicle.cost_in_credits
    fill_in "Crew", with: @vehicle.crew
    fill_in "Length", with: @vehicle.length
    fill_in "Manufacturer", with: @vehicle.manufacturer
    fill_in "Max Atmosphering Speed", with: @vehicle.max_atmosphering_speed
    fill_in "Model", with: @vehicle.model
    fill_in "Name", with: @vehicle.name
    fill_in "Passengers", with: @vehicle.passengers
    fill_in "Swapi Url", with: @vehicle.swapi_url
    fill_in "Vehicle Class", with: @vehicle.vehicle_class
    click_on "Create Vehicle"

    assert_text "Vehicle was successfully created"
    click_on "Back"
  end

  test "updating a Vehicle" do
    visit vehicles_url
    click_on "Edit", match: :first

    fill_in "Cargo Capacity", with: @vehicle.cargo_capacity
    fill_in "Consumables", with: @vehicle.consumables
    fill_in "Cost In Credits", with: @vehicle.cost_in_credits
    fill_in "Crew", with: @vehicle.crew
    fill_in "Length", with: @vehicle.length
    fill_in "Manufacturer", with: @vehicle.manufacturer
    fill_in "Max Atmosphering Speed", with: @vehicle.max_atmosphering_speed
    fill_in "Model", with: @vehicle.model
    fill_in "Name", with: @vehicle.name
    fill_in "Passengers", with: @vehicle.passengers
    fill_in "Swapi Url", with: @vehicle.swapi_url
    fill_in "Vehicle Class", with: @vehicle.vehicle_class
    click_on "Update Vehicle"

    assert_text "Vehicle was successfully updated"
    click_on "Back"
  end

  test "destroying a Vehicle" do
    visit vehicles_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Vehicle was successfully destroyed"
  end
end
