require 'rails_helper'

describe "Show author page", type: :feature do
    let(:jemaine) { create(:author) }
    it "should render without error" do
        visit author_path(jemaine)
    end

    it "should have text for author details" do 
        visit author_path(jemaine)
        expect(page).to have_text("Jemaine")
        expect(page).to have_text("Clement")
        expect(page).to have_text("flight_of_the_conchords.com")
    end

end
