require 'rails_helper'

describe "add a task process" do
  it "will add a task to list", js: true do
    list = List.create(name: "Happy Day")
    visit list_path(list)
    # visit root_path
    # click_on "New List"
    # fill_in "Name", with: "Happy Day"
    # click_on "Create List"
    # click_on "Happy Day"
    click_link "Add a task"
    fill_in "Description", with: "Learn AJAX"
    click_on "Create Task"
    expect(page).to have_content "Learn AJAX"
  end
end
