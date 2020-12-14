class SharesController < ApplicationController
  before_action :set_shares, only: %i[edit update]

  def index
    @shares = Share.all
  end

  def new
    @share = Share.new
  end

  def create
    @share = Share.new(shares_params)
    if @share.save
      redirect_to shares_path, notice: "#{@share.title} cadastrado com sucesso!"
    else
      flash.now[:alert] = @share.errors.full_messages.to_sentence
      render :new
    end
  end

  def edit; end

  def update
    if @share.update(share_params)
      redirect_to shares_path, notice: "#{@share.title} atualizado com sucesso!"
    else
      flash.now[:alert] = @share.errors.full_messages.to_sentence
      render :edit
    end
  end

  private

  def set_shares
    @share = Share.find(params[:id])
  end

  def share_params
    params.require(:share).permit(:profile_shared, :status)
  end
end
