class ProfilesController < ApplicationController
  before_action :set_profile, only: %i[edit update destroy]

  def index
    @profiles = Profile.all
  end

  def new
    @profile = Profile.new
  end

  def create
    @profile = Profile.new(profile_params)
    if @profile.save
      redirect_to profiles_path, notice: "#{@profile.name} cadastrado com sucesso!"
    else
      flash.now[:alert] = @profile.errors.full_messages.to_sentence
      render :new
    end
  end

  def edit; end

  def update
    if @profile.update(profile_params)
      redirect_to profiles_path, notice: "#{@profile.name} atualizado com sucesso!"
    else
      flash.now[:alert] = @profile.errors.full_messages.to_sentence
      render :edit
    end
  end

  def destroy
    if @profile.destroy!
      redirect_to profiles_path, notice: "#{@profile.name} excluído com sucesso!"
    else
      flash.now[:alert] = @profile.errors.full_messages.to_sentence
      render :show
    end
  end

  private

  def set_profile
    @profile = Profile.find(params[:id])
  end

  def profile_params
    params.require(:profile).permit(:title, :establishment, :description, :type)
  end
end
