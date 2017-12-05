require 'sinatra'
require 'sinatra/reloader' if development?
require 'csv'
require 'pry'

get '/' do
  slim :index
end

post '/parse' do
  @csv = CSV.parse(params[:file][:tempfile], headers: true)
  slim :parse
end
