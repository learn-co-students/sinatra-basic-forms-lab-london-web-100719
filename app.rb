require_relative 'config/environment'

class App < Sinatra::Base

    get '/' do
        erb :index
    end

    get '/new' do
        erb :create_puppy
    end

    post '/puppy' do
        #puts params
        @puppy=Puppy.new(params[:name],params[:breed],params[:months_old])
        # @name=params[:name]
        # @breed=params[:breed]
        # @age=params[:breed]]

        erb :display_puppy
    end

end
