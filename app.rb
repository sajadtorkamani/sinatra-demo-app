require 'sinatra'
require 'httparty'

get '/' do
  @joke = HTTParty.get('https://official-joke-api.appspot.com/random_joke')

  erb :home
end