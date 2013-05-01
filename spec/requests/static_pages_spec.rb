require 'spec_helper'

describe "StaticPages" do

	let(:base_title) {"Ruby on Rails Tutorial Sample App |"}

	describe "Home Page" do
		it "should have the content 'Sample App'" do
			# Run the generator again with the --webrat flag if you want to use webrat methods/matchers
			visit '/static_pages/home'
			page.should have_content('Sample App')
		end

		it "should have the right title" do
			visit '/static_pages/home'
			page.should have_selector('title', :text => "#{base_title} Home")
		end
	end

	describe "Help page" do
		it "should have the content 'help'" do
			visit '/static_pages/help'
			page.should have_content('Help')
		end

		it "should have the right title" do
			visit '/static_pages/help'
			page.should have_selector('title', :text => "#{base_title} Help")
		end
	end

	describe "About page" do
		it "should have the content 'About Us'" do
			visit '/static_pages/about'
			page.should have_content('About Us')
		end

		it "should have the right title" do
			visit '/static_pages/about'
			page.should have_selector('title', :text => "#{base_title} About")
		end
	end

	describe "Contect page" do
		it "should have the content 'Conact'" do
			visit '/static_pages/contact'
			page.should have_content('Contact')
		end

		it "should have the right title" do
			visit '/static_pages/contact'
			page.should have_selector('title', :text => "#{base_title} Contact")
		end
	end
end
