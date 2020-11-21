require 'rails_helper'

# RSpec.describe Paper, type: :model do
#   pending "add some examples to (or delete) #{__FILE__}"
# end

describe "New author", type: :model do
    let(:lord_of_the_rings) { create(:paper) }

    it "title should be present" do
        expect(lord_of_the_rings.title).to eq("lord_of_the_rings")
    end

    it "venue should be present" do
        expect(lord_of_the_rings.venue).to eq("middle_earth")
    end

    it "year should be present" do
        expect(lord_of_the_rings.year).to eq(1954)
    end

    it "should not be valid without title" do
        notValidPaper = Paper.new(title: "", venue: "middle_earth", year: 1954)
        expect(notValidPaper).to_not be_valid
    end
end