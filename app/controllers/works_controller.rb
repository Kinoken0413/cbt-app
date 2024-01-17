class WorksController < ApplicationController
  before_action :move_to_index, except: [:index]
  
  def index
    # if user_signed_in?
      # @works = current_user.works
    # end
  end

  def new
    @work = Work.new
  end

  def move_to_index
    unless user_signed_in?
      redirect_to action: :index
    end
  end

end
