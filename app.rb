require 'sinatra/base'
require './lib/game'
require './lib/player'

class Rps < Sinatra::Base 
  enable :sessions
  get '/' do 
    'testing'
  end

  get '/home' do
    erb(:home)
  end 

  post '/name' do
    session[:title_1] = Player.new(params[:title_1])
    session[:title_2] = Player.new(params[:title_2])
    redirect '/start'
  end

  get '/start' do
    @name = session[:title_1].name
    @name = session[:title_2].name
    erb(:start)
  end

  get '/game_page' do
    erb(:game_page)
  end

  post '/choice' do
    session[:choice] = session[:title_1].weapon(params[:choice])
    redirect '/result'
  end

  get '/result' do
    @choice = session[:choice]
    @result = Game.new.rock_result
    erb(:result)
  end

  run! if app_file == $0
end 
