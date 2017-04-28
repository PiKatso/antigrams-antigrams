require 'rspec'
require 'anagrams'


describe 'String#anagram?' do
  # first spec
  it 'takes user input and evaluates if input is valid word' do
    expect('cat'.anagram?('tac')).to(eq 'yay, an anagram!')
  end
  # second spec
  it 'takes user input and recognizes regardless of case' do
    expect('CaT'.anagram?('tAc')).to(eq 'yay, an anagram!')
  end
end

describe 'String#palidrome?' do
  it 'if it is an anagram, also check if input is a palidrome' do
    expect('cat'.palidrome?).to(eq 'not a palidrome')
  end
end

describe 'String#valid_word' do
  it 'if user input is not an anagram, check if it is an actual word' do
    expect('rhmz'.valid_word).to(eq 'please enter a valid word')
  end

  it 'if user input is not an anagram, check if it is an actual word' do
    expect('hello'.valid_word).to(eq 'valid word')
  end
end

describe 'String#antigram?' do
  it 'if user input is not an anagram, check if it is an antigram' do
    expect('hi'.antigram?('bye')).to(eq'antigram')
  end
  it 'if not antigram' do
    expect('hello'.antigram?('goodbye')).to(eq'not an antigram')
  end
  it 'if not antigram' do
    expect('hello'.antigram?('hi')).to(eq'not an antigram')
  end
end

describe 'String#clean_string' do
  it 'will take user input and clean removing symbols and numbers' do
    expect('hell0'.clean_string).to(eq 'hell')
  end
end
