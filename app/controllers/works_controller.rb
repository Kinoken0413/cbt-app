class WorksController < ApplicationController
  before_action :move_to_index, except: [:index]
  
  def index
    @works = current_user.works
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

  private

  def move_to_index
    unless user_signed_in?
      redirect_to action: :index
    end
  end

  def work_params
    params.require(:work).permit(:automatic_thought,:cognitive_distortion_id,:rational_thought).merge(user_id: current_user.id)
  end

end
