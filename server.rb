require 'sinatra'
require 'pry'

get '/' do
  erb :index
end

post '/a-post' do
  @what_was_said = params["what-to-say"]
  @who_said_it = params["who-says"]
  # erb :a_post
  redirect '/'
end
