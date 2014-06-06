require 'spec_helper'


feature 'create a new list', %q(
  As a user,
  I want to be able to create a list,
  So I can add movies to it
  ) do

  scenario 'user adds a movie to a new list' do

    user = FactoryGirl.create(:user)

    sign_in_as(user)
    visit root
    click_on("Create a new list")

    list = FactoryGirl.build(:list)
    fill_in "Title", with: list.title
    fill_in "Description", with: list.description
    click_on "Create List"
    expect(page).to have_content("List created!")
  end
end
