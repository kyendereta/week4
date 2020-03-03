require 'sinatra'

get '/' do
    'Hello World!'
end

get '/hello/:name' do
    # "Hello #{params['name']}!"
    params.inspect
end