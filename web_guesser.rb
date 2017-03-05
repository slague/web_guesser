require 'sinatra/reloader'
require 'sinatra'


x = 1 + rand(100)

get '/' do
  "THE SECRET NUMBER IS #{x}."
end
