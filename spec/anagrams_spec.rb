require 'rspec'
require 'anagrams'


describe 'String#anagram?' do
  # first spec
  it 'takes user input and evaluates if input is valid word' do
    expect('cat'.anagram?('tac')).to(eq 'it is an anagram')
  end
  # second spec
  it 'takes user input and recognizes regardless of case' do
    expect('CaT'.anagram?('tAc')).to(eq 'it is an anagram')
  end
end

describe 'String#palidrome?' do
  it 'if it is an anagram, also check if input is a palidrome' do
    expect('cat'.palidrome?).to(eq 'it is not a palidrome')
  end
end

describe 'String#valid_word?' do
  it 'if user input is not an anagram, check if it is an actual word' do
    expect('urby'.valid_word?).to(eq 'please enter a valid word')
  end

  it 'if user input is not an anagram, check if it is an actual word' do
    expect('hello'.valid_word?).to(eq 'it is a valid word')
  end
end

describe 'String#antigram?' do
  it 'if user input is not an anagram, check if it is an antigram' do
    expect('hi'.antigram?('bye')).to(eq'you have got yourself and antigram')
  end
  # it 'if not antigram but letters match' do
  #   expect('hello'.antigram?('goodbye')).to(eq'this is not an antigram but 2 letters match, "e" "o"')
  # end
end
