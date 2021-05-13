require 'sinatra/base'
require 'sinatra/reloader'
require 'rack'
require 'player'

class Battle < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end 

  enable :sessions

  get '/' do
    erb :index
  end

  post '/names' do
    $player_1_name = Player.new(params[:player_1_name])
     $player_2_name = Player.new(params[:player_2_name])
    redirect '/play'
  end

 get '/play' do
    @player_1_name = session[:player_1]
    @player_2_name = session[:player_2]
    erb :play
  end

 get '/attack' do
  @player_1_name = session[:player_1]
  @player_2_name = session[:player_2]
  erb :attack
 end 
end
