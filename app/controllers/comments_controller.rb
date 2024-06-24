class CommentsController < ApplicationController
  before_action :set_prototype, only: [:create]

  def create
    @comment = @prototype.comments.new(comment_params)
    @comment.user = current_user

    if @comment.save
      redirect_to prototype_path(@prototype), notice: 'コメントが作成されました。'
    else
      @comments = @prototype.comments.includes(:user)
      flash.now[:alert] = 'コメントを保存できませんでした。'
      render 'prototypes/show'
    end
  end

  private

  def set_prototype
    @prototype = Prototype.find(params[:prototype_id])
  end

  def comment_params
    params.require(:comment).permit(:content).merge(user_id: current_user.id)
  end
end