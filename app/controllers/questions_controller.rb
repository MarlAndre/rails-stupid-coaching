class QuestionsController < ApplicationController
  def ask

  end

  def answer
    @question = params[:question]

    good_answer = "I am going to work right now!"

    if @question.end_with?("?")
      @answer =  "Silly question, get dressed and go to work!"
    elsif @question.upcase != good_answer.upcase
      @answer = "I don't care, get dressed and go to work!"
    else @question == good_answer
      @answer = "Great!"
    end

  end
end
