require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('word frequency count', {:type => :feature}) do
  it('fills in the word and searches for the occurances of it') do
    visit('/')
    fill_in('word', :with => "pet")
    fill_in('sentence', :with => "i have a pet dog and a pet cat")
    click_button('Count my Words!')
    expect(page).to have_content("Your word appears 2 times")
  end
end
