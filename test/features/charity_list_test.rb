require "test_helper"

class CharityListTest < Capybara::Rails::TestCase
  feature "Charity List" do
  	scenario "displays a list of charities" do
	    visit root_path
    	page.must_have_css("#charities")
  	end
	end

  test "sanity" do
    visit root_path
    assert_content page, "Listing Charities"
    refute_content page, "Goobye All!"
  end

end




