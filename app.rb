require 'sinatra'
require 'sinatra/reloader' if development?

set :root, File.dirname(__FILE__)

get '/' do
  slim :index
end

