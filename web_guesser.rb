require 'sinatra/reloader'
require 'sinatra'

number = 1 + rand(100)

get '/' do
  erb :index, :locals => {:number => number}
end
