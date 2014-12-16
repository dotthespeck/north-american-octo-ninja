class QuestionsController < ApplicationController

  def current_user_id
    1
  end

  def index
    @questions = Question.all.order(created_at: :desc)
    @answers = Answer.all
  end

  def show
    id = params[:id]
    @question = Question.find(id)
  end

  def create
    @question = Question.new(question_params)
    @question.user_id = current_user_id
    if @question.save
      redirect_to @question, :notice => "Question was successfully created"
    else
      render :new
    end
  end

  def edit
    id = params[:id]
    @question = Question.find(id)
  end

  def update
    id = params[:id]
    @question = Question.find(id)
    @question.update(question_params)

      if @question.save
        redirect_to @question, notice: "Question updated"
      else
        render :edit, notice: "Question did not update"
      end
  end

    def new
      @question = Question.new
    end

    def destroy
      id = params[:id]
      @question = Question.find(id)
      @question.destroy
      redirect_to questions_path
    end

  def question_params
    params.require(:question).permit(:title, :description)
  end
end
