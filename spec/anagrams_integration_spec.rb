require 'capybara/rspec'
require './app'
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe 'the application path', {:type => :feature} do
  it 'it processes the user entry and returns antagram, anagram and palidrome results as output' do
    visit '/'
    fill_in 'input1', :with => 'input'
    click_button 'Get Score'
    expect(page).to have_content 'Is your word and Anagram?'
  end
end
