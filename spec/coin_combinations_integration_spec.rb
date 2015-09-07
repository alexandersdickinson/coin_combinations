require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('the coin combinations path', {:type => :feature}) do
  it('returns the coins in a given amount of change') do
    visit('/')
    fill_in('change', :with => 69)
    click_button('Submit')
    expect(page).to(have_content('Your change is 2 quarters, 1 dime, 1 nickel, and 4 cents.'))
  end
end