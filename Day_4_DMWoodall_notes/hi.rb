require 'sinatra'

get '/hi' do  
"Hello World!"
end

get '/hello/:name' do
  "Hello #{params[:name]}!"
end

get '/command/:specific' do
  "This is a page for the command: #{params[:specific]}!"
end
