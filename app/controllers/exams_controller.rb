class ExamsController < ApplicationController
  before_action :set_exams, only: %i[edit update]

  def index
    @exams = Exam.all
  end

  def new
    @exam = Exam.new
  end

  def create
    @exam = Exam.new(exams_params)
    if @exam.save
      redirect_to exams_path, notice: "#{@exam.title} cadastrado com sucesso!"
    else
      flash.now[:alert] = @exam.errors.full_messages.to_sentence
      render :new
    end
  end

  def edit; end

  def update
    if @exam.update(exams_params)
      redirect_to exams_path, notice: "#{@exam.title} atualizado com sucesso!"
    else
      flash.now[:alert] = @exam.errors.full_messages.to_sentence
      render :edit
    end
  end

  private

  def set_exams
    @exam = Exam.find(params[:id])
  end

  def exams_params
    params.require(:exam).permit(:title, :date, :establishment, :description, :profile_id, :files)
  end
end
