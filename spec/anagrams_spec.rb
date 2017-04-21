require 'rspec'
require 'anagrams'


describe 'Word_checker#anagram?' do
  # first spec
  it 'takes user input and evaluates if input is valid word' do
    expect('cat'.anagram?('tac')).to(eq 'it is an anagram')
  end
  # second spec
  it 'takes user input and recognizes regardless of case' do
    expect('CaT'.anagram?('tAc')).to(eq 'it is an anagram')
  end
end

describe 'Word_checker#palidrome?' do
  it 'if it is an anagram, also check if input is a palidrome' do
    expect('cat'.palidrome?).to(eq 'it is not a palidrome')
  end

describe 'Word_checker#valid_word?' do
  it 'if user input is not an anagram, check if it is an actual word'
    expect('urby'.valid_word?).to(eq 'please enter a valid word')
  end
end
