class AnswersController < ApplicationController
  before_action :set_question
  before_action :set_choice, only: %i[create]
  def create
    @choice.increment!(:votes)
    redirect_to question_path(@question)
  end

  private


  def set_question
    @question = Question.find(params[:question_id])
  end

  def set_choice
    @choice = @question.choices.find(params[:choice_id])
  end
end