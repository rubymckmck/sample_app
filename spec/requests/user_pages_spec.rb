require 'spec_helper'

describe "User Pages" do
  subject { page }

  	describe "sign up page" do

    before {visit signup_path}

    it { should have_selector('h1', text: 'Sign Up')}
    it { should have_selector('title', text: 'ROR - SIGN UP')}
  end
end
