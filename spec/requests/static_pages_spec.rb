require 'spec_helper'

describe "StaticPages" do
  describe "Home Page" do
  	it "should have the text 'Sample App'" do 
  		visit '../static_pages/home'
  		page.should have_selector('h1', :text => 'Sample Application')
  	end

  	it "should have the title 'Sample App'" do 
  		visit '../static_pages/home'
  		page.should have_selector('title', :text => 'Sample Application')
  	end

  end
  describe "Help page" do
  	it "should have the text 'Help Page'" do 
  		visit '../static_pages/help'
  		page.should have_selector('h1', :text => 'Help Page')
  	end
  end
  describe "About page" do
  	it "should have the text 'About Us'" do 
  		visit '../static_pages/about'
  		page.should have_selector('h1', :text => 'About Us')
  	end
  end
end
