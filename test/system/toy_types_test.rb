require "application_system_test_case"

class ToyTypesTest < ApplicationSystemTestCase
  setup do
    @toy_type = toy_types(:one)
  end

  test "visiting the index" do
    visit toy_types_url
    assert_selector "h1", text: "Toy types"
  end

  test "should create toy type" do
    visit toy_types_url
    click_on "New toy type"

    fill_in "Description", with: @toy_type.description
    fill_in "Name", with: @toy_type.name
    click_on "Create Toy type"

    assert_text "Toy type was successfully created"
    click_on "Back"
  end

  test "should update Toy type" do
    visit toy_type_url(@toy_type)
    click_on "Edit this toy type", match: :first

    fill_in "Description", with: @toy_type.description
    fill_in "Name", with: @toy_type.name
    click_on "Update Toy type"

    assert_text "Toy type was successfully updated"
    click_on "Back"
  end

  test "should destroy Toy type" do
    visit toy_type_url(@toy_type)
    click_on "Destroy this toy type", match: :first

    assert_text "Toy type was successfully destroyed"
  end
end
