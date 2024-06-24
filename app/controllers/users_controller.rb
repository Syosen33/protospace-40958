class UsersController < ApplicationController
  before_action :authenticate_user!, only: [:edit, :update] 

  def show
    @user = User.find(params[:id])
    # ユーザーの詳細ページの処理
  end

  # 他のアクションの定義
end
