class CoachingController < ApplicationController
  def answer
    @your_message = params[:q]
    @answer = coach(@your_message)
  end

  def ask
  end

  private

  def coach(your_message)
    case your_message
      when "I am going to work right now!" || "I AM GOING TO WORK RIGHT NOW!"
        ""
      when your_message.upcase
        "I can feel your motivation!"
      when your_message.end_with?("?")
        "Silly question, get dressed and go to work!"
      else
        "I don't care, get dressed and go to work!"
    end
  end
end
