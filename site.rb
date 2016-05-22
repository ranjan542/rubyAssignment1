require 'bundler/setup'
require 'sinatra'
set :port, 4000
set :bind, '0.0.0.0'
get '/alive' do
  "I am alive"
end

get '/italian' do
  "Ciao!"
end

get '/' do
  erb :index
end

ENV['PORT'] ||= '4000'
set :port, ENV['PORT']

get '/read_more' do
  erb :read_more
end