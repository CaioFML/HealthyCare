class TreatmentsController < ApplicationController
  before_action :set_treatments, only: %i[edit update]

  def index
    @treatments = Treatment.all
  end

  def new
    @treatment = Treatment.new
  end

  def create
    @treatment = Treatment.new(treatments_params)
    if @treatment.save
      redirect_to treatments_path, notice: "#{@treatment.title} cadastrado com sucesso!"
    else
      flash.now[:alert] = @treatment.errors.full_messages.to_sentence
      render :new
    end
  end

  def edit; end

  def update
    if @treatment.update(treatment_params)
      redirect_to treatments_path, notice: "#{@treatment.title} atualizado com sucesso!"
    else
      flash.now[:alert] = @treatment.errors.full_messages.to_sentence
      render :edit
    end
  end

  def destroy
    if @treatment.destroy!
      redirect_to treatments_path, notice: "#{@treatment.title} excluído com sucesso!"
    else
      flash.now[:alert] = @treatment.errors.full_messages.to_sentence
      render :show
    end
  end

  private

  def set_treatments
    @treatment = Treatment.find(params[:id])
  end

  def treatment_params
    params.require(:treatment).permit(:title, :establishment, :description, :type)
  end
end
