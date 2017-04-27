require 'sinatra'
require 'sinatra/reloader'
require './lib/anagrams'
also_reload 'lib/**/*.rb'

get ('/') do
  erb(:index)
end

get ('/results') do
  word1 = params.fetch('input1')
  word2 = params.fetch('input2')
  @output_message = ""

  if word1.valid_word == "valid word"
    if word2.valid_word == "valid word"
      @output_anagram = word1.anagram?(word2)
      @output_antigram = word1.antigram?(word2)
      @output_palidrome = word1.palidrome?
    else
      @output_message = "please enter a valid english words. thx!"
    end
  else
    @output_message = "please enter a valid english words. thx!"
  end
  erb(:results)
end
