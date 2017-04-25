require 'sinatra'
require 'sinatra/reloader'
require './lib/anagrams'
also_reload 'lib/**/*.rb'

get ('/') do
  erb(:index)
end

get ('/results') do
  @word1 = params.fetch('input1')
  @word2 = params.fetch('input2')
    @word1.valid_word.clean_string
    @word2.valid_word.clean_string
    @output_anagram = word1.anagram?(word2)
    @output_antigram = word1.antigram?(word2)
    @output_palidrome = word1.palidrome?
  erb(:results)
  # end
end
