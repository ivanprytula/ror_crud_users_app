require "application_system_test_case"

class CustomersTest < ApplicationSystemTestCase
  setup do
    @customer = customers(:one)
  end

  test "visiting the index" do
    visit customers_url
    assert_selector "h1", text: "Data to perform CRUD Operations"
  end

  test "should create customer" do
    visit customers_url
    click_on "Create New User"

    fill_in "Email", with: @customer.email
    fill_in "Password", with: @customer.password
    fill_in "Username", with: @customer.username
    click_on "Create User"

    assert_text "User was successfully created"
    click_on "Back"
  end

  test "should update customer" do
    visit customer_url(@customer)
    click_on "Edit this user", match: :first

    fill_in "Email", with: @customer.email
    fill_in "Password", with: @customer.password
    fill_in "Username", with: @customer.username
    click_on "Update User"

    assert_text "User was successfully updated"
    click_on "Back"
  end

  test "should destroy Customer" do
    visit customer_url(@customer)
    click_on "Destroy this user", match: :first

    assert_text "User was successfully destroyed"
  end
end
