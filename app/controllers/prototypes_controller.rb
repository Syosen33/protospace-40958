class PrototypesController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]

  def index
    @prototypes = Prototype.all
  end

  def new
    @prototype = Prototype.new
  end

  def create
    @prototype = current_user.prototypes.build(prototype_params)
    if @prototype.save
      redirect_to @prototype, notice: 'プロトタイプが保存されました。'
    else
      flash.now[:alert] = 'プロトタイプの保存に失敗しました。'
      render :new
    end
  end

  private

  def prototype_params
    params.require(:prototype).permit(:title, :catch_copy, :concept, :image)
  end
end