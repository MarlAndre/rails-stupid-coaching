class QuestionsController < ApplicationController
  def ask

  end

  def answer
    @answer = coach_answer(@question)
    @question = params[:question]

  end

  private

  def coach_answer(question)
    # TODO: return coach answer to question
    good_answer = "I am going to work right now!"

    if question.end_with?("?")
      return "Silly question, get dressed and go to work!"
    elsif question.upcase != good_answer.upcase
      return "I don't care, get dressed and go to work!"
    else
      return ""
    end
  end
end
