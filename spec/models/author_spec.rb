require 'rails_helper'

# RSpec.describe Author, type: :model do
#   pending "add some examples to (or delete) #{__FILE__}"
# end

describe "New author", type: :model do
    before(:each) do
        @author = Author.new(first_name: "Bret",last_name: "McKenzie", homepage: "https://en.wikipedia.org/wiki/Flight_of_the_Conchords")
    end

    it "first name should be present" do
        expect(@author.first_name).to eq("Bret")
    end

    it "last name should be present" do
        expect(@author.last_name).to eq("McKenzie")
    end

    it "homepage should be present" do
        expect(@author.homepage).to eq("https://en.wikipedia.org/wiki/Flight_of_the_Conchords")
    end

    it "name should consist of first and last name" do
        expect(@author.name).to eq("Bret McKenzie")
    end

    it "should not be valid without last name" do
        notValidAuthor = Author.new(first_name: "Bret", homepage: "https://en.wikipedia.org/wiki/Flight_of_the_Conchords")
        expect(notValidAuthor).to_not be_valid
    end

end