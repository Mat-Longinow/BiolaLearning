require 'sinatra'
require 'sinatra/reloader'

SECRET_NUMBER = rand(101)

get '/' do
	erb :index, {locals: {number: SECRET_NUMBER}},

	guess = params["guess"]

	{locals: {guess: guess}}
end