require_relative 'config/environment'

class App < Sinatra::Base
    get '/' do 
        erb :user_input 
    end

    post '/piglatinize' do
        input_from_user = params[:user_input] 
        @piglatinized_text = PigLatinizer.new(input_from_user)
        erb :piglatinize
    end
end