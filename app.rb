require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
    @user_name = (params[:name].reverse)
    "Hello #{@user_name}!"
  end
  
  get '/square/:number' do
    x = (params[:number].to_i)*(params[:number].to_i)
    "#{x}"
  end
  
  get '/say/:number/:phrase' do
    final_tring = ""
    (params)
  
  get '/say/:word1/:word2/:word3/:word4/:word5' do
    w1 = params[:word1]
    w2 = params[:word2]
    w3 = params[:word3]
    w4 = params[:word4]
    w5 = params[:word5]
    "#{w1} #{w2} #{w3} #{w4} #{w5}"
  end
  
  
  get '/:operation/:number1/:number2' do
    if "add" == params[:operation]
      a = (params[:number1].to_i)+(params[:number2].to_i)
      "#{a}"
    elsif "subtract" == params[:operation]
       b = (params[:number1].to_i)-(params[:number2].to_i)
     "#{b}"
    elsif "multiply" == params[:operation]
      c = (params[:number1].to_i)*(params[:number2].to_i)
      "#{c}"
    elsif "divide" == params[:operation]
       d = (params[:number1].to_i)/(params[:number2].to_i)
      "#{d}"
    else
    end
  end
end
