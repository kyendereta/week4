require 'sinatra'
require 'sinatra/reloader'

get '/' do
    'Hello World!'
end

get '/hello/:name' do
    "Hello #{params['name']}!"
end

get '/signup' do
    "I am trying to sign in"
end

get '/cars:name' do
    "This car is a #{params["name"]}"
end

get '/myname/yourname:name' do
    "#{params['name']}".upcase
end

get '/currenttime' do
    Time.now.strftime('%d %b %Y %H:%M:%S')
end