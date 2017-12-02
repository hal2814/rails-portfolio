require 'rails_helper'

describe "the add project process" do
  it "adds a new project" do
    visit projects_path
    click_link 'New Project'
    fill_in 'Name', :with => 'Data Site'
    fill_in 'Description', :with => 'A site that handles data'
    fill_in 'Image', :with => 'http://www.businessresearchguide.com/wp-content/uploads/2014/10/Website.jpg'

    click_button 'Create Project'
    expect(page).to have_content 'Project was successfully created.'
  end
end
