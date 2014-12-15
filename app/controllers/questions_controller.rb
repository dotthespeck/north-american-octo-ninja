class QuestionsController < ActionController::Base

  def index
    @questions = Question.all.order(created_at: :desc)
    @answers = Answer.all
  end

  def show
  end

end
