class QuestionsController < ApplicationController

  ANSWERS = ["Great!", "Silly question, get dressed and go to work!", "I don't care, get dressed and go to work!"]

  def answer
    @questions = params[:ask]
    if @questions == "I am going to work"
      @answers = ANSWERS[0]
    elsif @questions.include? "?"
      @answers = ANSWERS[1]
    else
      @answers = ANSWERS[2]
    end
  end
end

