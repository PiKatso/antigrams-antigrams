require 'sinatra'
require 'sinatra/reloader'
require './lib/anagrams'
also_reload 'lib/**/*.rb'

get '/' do
  # @greeting = "hello Sara".method_test
  erb(:index)
end
