require_relative 'config/environment'

class App < Sinatra::Base
  

  configure do
    enable :sessions
    set :session_secret, 'secret'
  end

get '/' do 
 erb :index
end 

 post '/add_to_cart' do 
   session[:item] = params[:item]
   @session = session 
   erb :add_to_cart
 end 


end