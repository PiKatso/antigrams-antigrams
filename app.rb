require 'sinatra'
require 'sinatra/reloader'
require './lib/anagrams'
also_reload 'lib/**/*.rb'

get ('/') do
  erb(:index)
end

get ('/results') do
  @word1 = params.fetch('input1').clean_string
  @word2 = params.fetch('input2').clean_string
  if @word1.valid_word
    if @word2.valid_word
      @output_anagram = word1.anagram?(word2)
      @output_antigram = word1.antigram?(word2)
      @output_palidrome = word1.palidrome?
    else
      "please enter a valid word"
    end
  else
    "please enter a valid word"
  end
  erb(:results)
end
