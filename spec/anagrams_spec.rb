require 'rspec'
require 'anagrams'


describe 'String#anagram' do
  # first spec
  it 'takes user input and evaluates if input is valid word' do
    expect('cat'.anagram).to(eq 'it is an anagram')
  end
  # second spec
  it 'takes user input and recognizes regardless of case' do
    expect('CaT'.method_name).to(eq 'it is an anagram')
  end
  # third spec
  it 'if it is an anagram, also check if input is a palidrome' do
    expect('cat'.method_name).to(eq 'it is  not a palidrome')
  end
end
