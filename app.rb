require_relative 'config/environment'
require 'pry'
class App < Sinatra::Base
  # Write your code here!

  get '/reversename/:name' do
    @name = params[:name]
    @name.reverse
  end

  get '/square/:number' do
    @square = params[:number]
    sqaured = @square.to_i ** 2
    sqaured.to_s
  end

  get '/say/:number/:phrase' do
    @number = params[:number]
    @phrase = params[:phrase]
    string = ""
    @number.to_i.times do
      string += @phrase
    end
    string
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @word1 = params[:word1]
    @word2 = params[:word2]
    @word3 = params[:word3]
    @word4 = params[:word4]
    @word5 = params[:word5]
    string = @word1 + " " + @word2 + " " + @word3 +" "+ @word4 +" "+ @word5 + "."
  end

  get '/:operation/:number1/:number2' do
  #  binding.pry
    @operation = params[:operation]
    @number1 = params[:number1].to_i
    @number2 = params[:number2].to_i
    ret = 0
    case @operation

    when "add"
      ret = @number1 + @number2
    when "subtract"
      ret = @number1 - @number2
    when "multiply"
      ret = @number1 * @number2
    when "divide"
      ret = @number1 / @number2
    end
    ret.to_s
  end

end
