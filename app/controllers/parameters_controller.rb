class ParametersController < ApplicationController
  def querry_show
    @value = params[:querry]
  end

  def wild_card_show
    @value = params[:wild_card]
  end

  def guessing_game
    render 'guess_number.html.erb'
  end

  def guess_form
    correct_number = 25
    number_guessed = params[:q].to_i
    if number_guessed < correct_number
      @message = "Your guess was less than the winning number"
    elsif number_guessed > correct_number
      @message = "Your guess was higher than the winning number"
    else
      @message = "You are a winner!"
    end
    render 'guess_number.html.erb'
  end
end
