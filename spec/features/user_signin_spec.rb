require "rails_helper"

RSpec.feature "User Sign In" do
    scenario "He see additional links - Create Event, His username, and Sign Out" do
        username="test_user"

        visit root_path
        click_on "Sign In"
        fill_in "Username", with: username
        click_on "Create User"
        
        expect(page).to have_link "Create Event"
        expect(page).to have_link username
        expect(page).to have_link "Sign Out"

    end

end