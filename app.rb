require_relative 'config/environment'

class App < Sinatra::Base
  get '/' do
    erb :user_input
  end

  get '/piglatinize' do
    @pg = PigLatinize.new(params)
    erb :result
  end
end