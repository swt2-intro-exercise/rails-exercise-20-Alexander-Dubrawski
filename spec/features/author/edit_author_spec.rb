require 'rails_helper'

describe "Edit author page", type: :feature do
    let(:jemaine) { create(:author) }

    it "should render without error" do
        visit edit_author_path
    end

    it "should update author" do
        visit edit_author_path(jemaine)
        page.fill_in 'author[first_name]', with: 'Bret'
        page.fill_in 'author[last_name]', with: 'McKenzie'
        page.fill_in 'author[homepage]', with: 'https://en.wikipedia.org/wiki/Flight_of_the_Conchords'
        find('input[type="submit"]').click
        jemaine.reload
        expect(jemaine.first_name).to eq('Bret')
        expect(jemaine.last_name).to eq('McKenzie')
        expect(jemaine.homepage).to eq('https://en.wikipedia.org/wiki/Flight_of_the_Conchords')
    end

end