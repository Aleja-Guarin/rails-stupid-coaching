class QuestionsController < ApplicationController

  def ask
    @ask
  end

  def answer
    @ask = params[:ask]
    if @ask == "I am going to work"
      @answer = "Great!"
    elsif @ask.include?('?')
      @answer = "Silly question, get dressed and go to work!"
    elsif @ask == ""
      @answer = "I can't hear you!"
    else
      @answer = "I don't care, get dressed and go to work!"
    end

  end
end
