require_relative 'config/environment'

class App < Sinatra::Base
  get '/' do
    erb :user_input
  end

  post '/piglatinize' do
    @pg = PigLatinize.new(params[:sentence])
    erb :result
  end
end
