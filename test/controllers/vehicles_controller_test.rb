require 'test_helper'

class VehiclesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @vehicle = vehicles(:one)
  end

  test "should get index" do
    get vehicles_url
    assert_response :success
  end

  test "should get new" do
    get new_vehicle_url
    assert_response :success
  end

  test "should create vehicle" do
    assert_difference('Vehicle.count') do
      post vehicles_url, params: { vehicle: { cargo_capacity: @vehicle.cargo_capacity, consumables: @vehicle.consumables, cost_in_credits: @vehicle.cost_in_credits, crew: @vehicle.crew, length: @vehicle.length, manufacturer: @vehicle.manufacturer, max_atmosphering_speed: @vehicle.max_atmosphering_speed, model: @vehicle.model, name: @vehicle.name, passengers: @vehicle.passengers, swapi_url: @vehicle.swapi_url, vehicle_class: @vehicle.vehicle_class } }
    end

    assert_redirected_to vehicle_url(Vehicle.last)
  end

  test "should show vehicle" do
    get vehicle_url(@vehicle)
    assert_response :success
  end

  test "should get edit" do
    get edit_vehicle_url(@vehicle)
    assert_response :success
  end

  test "should update vehicle" do
    patch vehicle_url(@vehicle), params: { vehicle: { cargo_capacity: @vehicle.cargo_capacity, consumables: @vehicle.consumables, cost_in_credits: @vehicle.cost_in_credits, crew: @vehicle.crew, length: @vehicle.length, manufacturer: @vehicle.manufacturer, max_atmosphering_speed: @vehicle.max_atmosphering_speed, model: @vehicle.model, name: @vehicle.name, passengers: @vehicle.passengers, swapi_url: @vehicle.swapi_url, vehicle_class: @vehicle.vehicle_class } }
    assert_redirected_to vehicle_url(@vehicle)
  end

  test "should destroy vehicle" do
    assert_difference('Vehicle.count', -1) do
      delete vehicle_url(@vehicle)
    end

    assert_redirected_to vehicles_url
  end
end
