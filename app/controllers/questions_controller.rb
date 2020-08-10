# frozen_string_literal: true

# :nodoc:
class QuestionsController < ApplicationController
  def ask; end

  def answer
    @question = params[:question]

    if @question == 'I am going to work'
      @rep = 'Great!'
    elsif @question.include? '?'
      @rep = 'Silly question, get dressed and go to work!'
    else
      @rep = 'I don\'t care, get dressed and go to work!'
    end
  end
end
