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
    params[:number].to_i + 1 * params[:phrase]
    end


  get '/say/:word1/:word2/:word3/:word4/:word5' do
    params.values.join(" ") + "."
  end

  get '/:operation/:num1/:num2' do
    @result = params[:num1].to_i params[:operation].to_sym params[:num2].to_i
    @result.to_s
  end 


end
