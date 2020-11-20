require 'rails_helper'

describe "New author page", type: :feature do
 
    it "should render without error" do
        visit new_author_path
    end

    it "should have text inputs for an author's first name, last name, and homepage" do
        visit new_author_path

        expect(page).to have_field('author[first_name]')
        expect(page).to have_field('author[last_name]')
        expect(page).to have_field('author[homepage]')
    end

    it "should create new author" do 
        visit new_author_path
        page.fill_in 'author[first_name]', with: 'Bret'
        page.fill_in 'author[last_name]', with: 'McKenzie'
        page.fill_in 'author[homepage]', with: 'https://en.wikipedia.org/wiki/Flight_of_the_Conchords'
        find('input[type="submit"]').click
        expect(Author.count).to eq(1)
    end 

end