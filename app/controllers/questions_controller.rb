class QuestionsController < ApplicationController

  def ask
  end

  def answer
    @question = params[:question]
    if @question.blank?
      @response = "I can't hear you!"
    elsif @question =~ /i am going to work/i
      @response = "Great!"
    elsif @question.ends_with?("?")
      @response = "Silly question, get dressed and go to work!"
    else
      @response = "I don't care, get dressed and go to work!"
    end
  end
end
