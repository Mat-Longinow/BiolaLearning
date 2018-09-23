require 'sinatra'
require 'sinatra/reloader'

number = rand(101)

get '/' do
	erb :index, locals: {number: number}
	throw params.inspect
end