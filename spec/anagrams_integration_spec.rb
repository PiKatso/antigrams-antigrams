require 'capybara/rspec'
require './app'
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('the application path', {:type => :feature}) do
  it 'it processes the user entry and returns antagram results as output' do
    visit('/')
    fill_in('input1', :with => 'h3')
    fill_in('input2', :with => 'hi')
    click_button('Find Out')
    expect(page).to have_content("please enter a valid english words. thx!")
  end
end
