require 'sinatra'
require 'httparty'

get '/' do
  joke = HTTParty.get 'http://api.icndb.com/jokes/random'
  joke['value']['joke']
end
