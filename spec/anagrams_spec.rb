require 'rspec'
require 'anagrams'


describe 'String#anagram' do
  # first spec
  it 'takes user input and evaluates if input is valid word' do
    expect('cat'.anagram).to(eq 'it is an anagram')
  end
  # second spec
  # it 'explanation of what this test tests' do
  #   expect('input'.method_name).to(eq 'expected output')
  # end
end
