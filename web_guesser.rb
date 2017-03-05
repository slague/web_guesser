require 'sinatra/reloader'
require 'sinatra'

SECRET_NUMBER = rand(100)

  def check_guess(guess)
    if guess.to_i - SECRET_NUMBER > 5
     "Your guess of #{guess}, is WAY too high!"
   elsif  SECRET_NUMBER - guess.to_i > 5
     "Your guess of #{guess}, is WAY too low!"
   elsif guess.to_i > SECRET_NUMBER
      "Your guess of #{guess}, is too high!"
    elsif guess.to_i < SECRET_NUMBER
      "Your guess of #{guess}, is too low!"
    else
      "You guessed correctly! The SECRET NUMBER is #{SECRET_NUMBER}."
    end
  end

get '/' do
  guess = params["guess"]
  message = check_guess(guess)
  erb :index, :locals => {:number => SECRET_NUMBER, :message => message}
end
