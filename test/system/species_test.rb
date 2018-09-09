require "application_system_test_case"

class SpeciesTest < ApplicationSystemTestCase
  setup do
    @species = species(:one)
  end

  test "visiting the index" do
    visit species_url
    assert_selector "h1", text: "Species"
  end

  test "creating a Species" do
    visit species_url
    click_on "New Species"

    fill_in "Average Height", with: @species.average_height
    fill_in "Average Lifespan", with: @species.average_lifespan
    fill_in "Classification", with: @species.classification
    fill_in "Designation", with: @species.designation
    fill_in "Eye Colors", with: @species.eye_colors
    fill_in "Hair Colors", with: @species.hair_colors
    fill_in "Language", with: @species.language
    fill_in "Name", with: @species.name
    fill_in "Skin Colors", with: @species.skin_colors
    fill_in "Swapi Url", with: @species.swapi_url
    click_on "Create Species"

    assert_text "Species was successfully created"
    click_on "Back"
  end

  test "updating a Species" do
    visit species_url
    click_on "Edit", match: :first

    fill_in "Average Height", with: @species.average_height
    fill_in "Average Lifespan", with: @species.average_lifespan
    fill_in "Classification", with: @species.classification
    fill_in "Designation", with: @species.designation
    fill_in "Eye Colors", with: @species.eye_colors
    fill_in "Hair Colors", with: @species.hair_colors
    fill_in "Language", with: @species.language
    fill_in "Name", with: @species.name
    fill_in "Skin Colors", with: @species.skin_colors
    fill_in "Swapi Url", with: @species.swapi_url
    click_on "Update Species"

    assert_text "Species was successfully updated"
    click_on "Back"
  end

  test "destroying a Species" do
    visit species_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Species was successfully destroyed"
  end
end
