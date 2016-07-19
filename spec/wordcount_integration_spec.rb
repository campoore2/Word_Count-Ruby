require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('word frequency count', {:type => :feature}) do
  it('takes a single word and determines how many times it appears in a given phrase') do
    visit('/')
    fill_in('word', :with => "pet")
    fill_in('sentence', :with => "i have a pet dog and a pet cat")
    click_button('Submit')
    expect(page).to have_content("The word 'pet' shows up 2 times.")
  end
