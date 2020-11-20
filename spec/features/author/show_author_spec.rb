require 'rails_helper'

describe "Show author page", type: :feature do

    it "should render without error" do
        visit author_path(@Jemaine)
    end

    it "should have text for author details" do 
        visit author_path(@Jemaine)
        expect(page).to have_text("Jemaine")
        expect(page).to have_text("Clement")
        expect(page).to have_text("flight_of_the_conchords.com")
    end

end
