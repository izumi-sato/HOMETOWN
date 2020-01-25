class IventsController < ApplicationController
    before_action :move_to_index, except: :index
  
  def index
    @ivents=Ivent.all
  end
  
  def new
  end
  
  def create
    Ivent.create(ivent_params)
  end

  private
  def ivent_params
    params.permit(:ivent_name, :text, :owner_name, :start_day, :end_day,:place, :url, :image)
  end
  
  def move_to_index
    redirect_to action: :index unless user_signed_in?
  end
  
end
