require 'spec_helper'

describe "StaticPages" do
  describe "Home Page" do
  	it "should have the text 'Sample App'" do 
  		visit '../static_pages/home'
  		page.should have_content('Sample Application')
  	end
  end
end
