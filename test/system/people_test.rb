require "application_system_test_case"

class PeopleTest < ApplicationSystemTestCase
  setup do
    @person = people(:one)
  end

  test "visiting the index" do
    visit people_url
    assert_selector "h1", text: "People"
  end

  test "creating a Person" do
    visit people_url
    click_on "New Person"

    fill_in "Birth Year", with: @person.birth_year
    fill_in "Eye Color", with: @person.eye_color
    fill_in "Gender", with: @person.gender
    fill_in "Hair Color", with: @person.hair_color
    fill_in "Height", with: @person.height
    fill_in "Mass", with: @person.mass
    fill_in "Name", with: @person.name
    fill_in "Skin Color", with: @person.skin_color
    fill_in "Swapi Url", with: @person.swapi_url
    click_on "Create Person"

    assert_text "Person was successfully created"
    click_on "Back"
  end

  test "updating a Person" do
    visit people_url
    click_on "Edit", match: :first

    fill_in "Birth Year", with: @person.birth_year
    fill_in "Eye Color", with: @person.eye_color
    fill_in "Gender", with: @person.gender
    fill_in "Hair Color", with: @person.hair_color
    fill_in "Height", with: @person.height
    fill_in "Mass", with: @person.mass
    fill_in "Name", with: @person.name
    fill_in "Skin Color", with: @person.skin_color
    fill_in "Swapi Url", with: @person.swapi_url
    click_on "Update Person"

    assert_text "Person was successfully updated"
    click_on "Back"
  end

  test "destroying a Person" do
    visit people_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Person was successfully destroyed"
  end
end
