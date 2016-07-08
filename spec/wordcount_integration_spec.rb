require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('wordcount path', {:type => :feature}) do
  it 'matches the words from a user input' do
    visit('/index')
    fill_in('word', :with => 'word')
    fill_in('sentence', :with => 'count my word')
    click_button('Count my Words!')
    expect(page).to have_content(1)
  end
end
