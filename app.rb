require_relative 'config/environment'

class App < Sinatra::Base

get '/' do
  erb :index
end

get '/new' do
erb :create_puppy
end

post '/puppy' do
  hash = {name: params["name"], months_old: params["months_old"], breed: params["breed"]}
  new_pup = Puppy.new(hash)

  @name = new_pup.name
  @breed = new_pup.breed
  @months_old = new_pup.months_old
  erb :display_puppy
end

end
