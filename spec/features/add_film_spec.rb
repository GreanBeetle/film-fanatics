require 'rails_helper'

describe "the add a film process" do
  it "adds a new film" do
    Year.create!(year: 2004)
    visit years_path
    click_on'2004'
    save_and_open_page
    click_link 'ADD FILM'
    fill_in 'title', :with => 'High Fidelity'
    # fill_in 'director', :with => 'High Fidelity'
    # fill_in 'opening_gross', :with => 'High Fidelity'
    click_on 'Save Film'
    expect(page).to have_content 'Films'
  end

  # it "gives error when no name is entered" do
  #   visit new_list_path
  #   click_on 'Create List'
  #   expect(page).to have_content 'errors'
  # end
end
