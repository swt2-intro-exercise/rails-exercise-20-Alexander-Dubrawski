require 'rails_helper'

describe "New author page", type: :feature do
 
 it "should render withour error" do
   visit author_new_path
 end
end