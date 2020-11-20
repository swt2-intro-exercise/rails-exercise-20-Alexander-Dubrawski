require 'rails_helper'

describe "Index author page", type: :feature do
    let(:jemaine) { create(:author) }

    it "should render without error" do
        visit authors_path
    end

    it "should have table entry for an author's first name, last name, and homepage" do
        visit authors_path
        expect(page).to have_link 'New', href: new_author_path

        # expect(page).to have_text("Jemaine")
        # expect(page).to have_text("Clement")
        # expect(page).to have_text("flight_of_the_conchords.com")
    end
end