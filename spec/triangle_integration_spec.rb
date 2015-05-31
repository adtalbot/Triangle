ENV["RACK_ENV"] = "test"

require('spec_helper')
require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('The path of the triangle website', {:type => :feature}) do
  it('determines if the user entered a triangle and what type of triangle it is') do
    visit('/')
    fill_in('side_one')
    fill_in('side_two')
    fill_in('side_three')
    click_button('submit')
    expect(page)to have_content('Your triangle is an equilateral triangle')
  end
end