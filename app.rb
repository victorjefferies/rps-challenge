require 'sinatra/base'
require './lib/game'

class Rps < Sinatra::Base 
  enable :sessions
  get '/' do 
    'testing'
  end

  get '/home' do
    erb(:home)
  end 

  post '/name' do
    session[:title] = params[:title]
    redirect '/start'
  end

  get '/start' do
    @name = session[:title]
    erb(:start)
  end

  get '/game_page' do
    erb(:game_page)
  end

  post '/choice' do
    session[:choice] = params[:choice]
    redirect '/result'
  end

  get '/result' do
    choice = session[:choice]
    @result = Game.new.rock_result
    erb(:result)
  end

  run! if app_file == $0
end 
