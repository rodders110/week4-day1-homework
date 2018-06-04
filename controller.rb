require('sinatra');
require('sinatra/contrib/all');
require('pry-byebug');
require_relative('./models/game');
also_reload('models/*')

get '/' do
erb(:index)
end

get '/rules' do
  erb(:rules)
end

get '/play/:player1' do
game = Game.new(params[:player1], params[:player2])
@result = game.play()
erb(:result)
end
