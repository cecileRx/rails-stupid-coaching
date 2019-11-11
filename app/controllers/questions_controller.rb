# class controller documentation
class QuestionsController < ApplicationController
  def ask; end

  def answer
    @question = params[:question]
    @answer = deal_with_coach(@question)
  end

  private

  def deal_with_coach(question)
    if question == 'I am going to work'
      ''
    elsif question.include?('?')
      'Silly question, get dressed and go to work!'
    else
      "I don't care, get dressed and go to work!"
    end
  end
end
