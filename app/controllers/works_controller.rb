class WorksController < ApplicationController
  # ユーザーの認証が必要（ログインしていない場合はindexアクションのみ許可）
  before_action :authenticate_user!, except: [:index]
  
  # show, edit, updateアクションで共通のワークデータを設定
  before_action :set_work, only: [:show, :edit, :update]
  
  # ユーザーのワーク一覧を投稿日時を基準にして昇順に表示するためのアクション
  def index
    if user_signed_in?
      @works = current_user.works.order(created_at: :asc)
    end
  end

  # 新しいワークを作成するためのアクション
  def new
    @work = Work.new
  end

  # ワークの作成を行うアクション
  def create
    @work = Work.new(work_params)
    if @work.save
      redirect_to root_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  # 特定のワークの詳細を表示するためのアクション
  def show
  end

  # ワークの編集を行うためのアクション
  def edit
  end

  # ワークの更新を行うためのアクション
  def update
    if @work.update(work_params)
      redirect_to work_path(@work.id)
    else
      render :edit, status: :unprocessable_entity
    end
  end

  # ワークの削除を行うためのアクション
  def destroy
    work = Work.find(params[:id])
    work.destroy
    redirect_to root_path
  end

  private

  # パラメーターの許可とユーザー情報の追加を行うメソッド
  def work_params
    params.require(:work).permit(:automatic_thought, :cognitive_distortion_id, :rational_thought).merge(user_id: current_user.id)
  end

  # 特定のワークデータを取得するためのメソッド
  def set_work
    @work = Work.find(params[:id])
  end
end