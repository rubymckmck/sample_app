require 'spec_helper'

describe "StaticPages" do

  subject { page }

  describe "Home Page" do
    before {visit root_path}

    it { should have_selector('h1', text: 'Sample App')}
    it { should have_selector('title', text: 'ROR - HOME')}
  end


  describe "Help page" do
  	before {visit help_path}

    it { should have_selector('h1', text: 'Help Page')}
  	it { should have_selector('title', text: 'ROR - HELP')}
  end


  describe "About page" do
    before {visit about_path}

    it { should have_selector('h1', text: 'About Us')}
    it { should have_selector('title', text: 'ROR - ABOUT US')}
  end

  it "should have the right links" do
    visit root_path
    click_link "Help"
    page.should have_selector('h1', text: 'Help Page')
    visit root_path
    click_link "Sign Up!"
    page.should have_selector('h1', text: 'Sign Up')

  end


end
