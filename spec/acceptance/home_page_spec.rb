require 'spec_helper'

feature 'Home Page', %q{
  As an unregistered user
  I want to see the home page
}
do
  background do
  end

  scenario "Home Page" do
    visit "/"
    page.should have_link('Sign In')
    page.should_have_selector('title', :content => "Loccasions")
    page.should_have_content("What is Loccasions?")
  end
end