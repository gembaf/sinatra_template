require 'sinatra'
require 'sinatra/reloader' if development?

get '/' do
  slim :index
end

