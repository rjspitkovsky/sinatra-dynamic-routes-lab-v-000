require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
    params[:name].reverse
  end

  get '/square/:number' do
    @sqaure = params[:number].to_i * params[:number].to_i
    @square.to_s
  end 
end
