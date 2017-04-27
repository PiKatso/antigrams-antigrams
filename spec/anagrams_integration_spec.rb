require 'capybara/rspec'
require './app'
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

# describe('the application path', {:type => :feature}) do
#   it 'it processes the user entry and returns antagram results as output' do
#     visit('/')
#     fill_in('input1', :with => 'cat')
#     fill_in('input2', :with => 'tac')
#     click_button('Find Out')
#     expect(page).to have_content ('Is your word and Anagram? it is an anagram')
#   end
# end
