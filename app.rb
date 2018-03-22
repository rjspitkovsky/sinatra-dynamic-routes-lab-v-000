require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
    params[:name].reverse
  end

  get '/square/:number' do
    @square = params[:number].to_i ** 2
    @square.to_s
  end

  get '/say/:number/:phrase' do
      @number = params[:number].to_i
      x = 0
      while x < @number
        puts params[:phrase]
        x += 1
      end 
    end
  end
end
