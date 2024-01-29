class WorksController < ApplicationController
  before_action :authenticate_user!, except: [:index]
  before_action :set_work, only: [:show, :edit, :update]
  
  def index
    @works = current_user.works if user_signed_in?
  end

  def new
    @work = Work.new
  end

  def create
    @work = Work.new(work_params)
    if @work.save
      redirect_to root_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def show
  end

  def edit
  end

  def update
    if @work.update(work_params)
      redirect_to work_path(@work.id)
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    work = Work.find(params[:id])
    work.destroy
    redirect_to root_path
  end

  private

  def work_params
    params.require(:work).permit(:automatic_thought,:cognitive_distortion_id,:rational_thought).merge(user_id: current_user.id)
  end

  def set_work
    @work = Work.find(params[:id])
  end

end
