require 'spec_helper'

describe "Static pages" do

  let(:t) {'Sample App | '}
  describe "Home page" do
    it "should have the h1 'Home'" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      visit '/static_pages/home'
      page.should have_selector('h1', text: 'Sample App')
    end
    it "should have the base title" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      visit '/static_pages/home'
      page.should have_selector('title', text: "Sample App")
    end
    it "should not have a custom page title" do
      visit '/static_pages/home'
      page.should_not have_selector('title', text: '#{t}Home')
    end
  end

  describe "Help page" do
  	it "should have the h1 'Help'" do
  	  visit '/static_pages/help'
  	  page.should have_selector('h1', text: 'Help')
  	end
  	it "should have the title 'Help'" do
  	  visit '/static_pages/help'
  	  page.should have_selector('title', text: "#{t}Help")
  	end
  end

  describe "About page" do
  	it "should have the h1 'About us'" do
  	  visit '/static_pages/about'
  	  page.should have_selector('h1', text: 'About Us')
  	end
  	it "should have the title 'About us'" do
  	  visit '/static_pages/about'
  	  page.should have_selector('title', text: "#{t}About Us")
  	end
  end

  describe "Contact page" do
  	it "should have the h1 'Contact'" do
  	  visit '/static_pages/contact'
  	  page.should have_selector('h1', text: 'Contact')
  	end
  	it "should have the title 'Contact'" do
  	  visit '/static_pages/contact'
  	  page.should have_selector('title', text: "#{t}Contact")
  	end
  end
end