class IventsController < ApplicationController
  before_action :move_to_index, except: [:index, :show]
  
  def index
    @ivents=Ivent.all.order("start_day DESC").page(params[:page]).per(5)
  end
  
  def new
  end
  
  def create
    Ivent.create(ivent_params)
  end

  def show
    @ivent = Ivent.find(params[:id])
  end

  def destroy
    ivent = Ivent.find(params[:id])
      ivent.destroy
  end
  
  def edit
    @ivent = Ivent.find(params[:id])
  end
  
  def update
    ivent = Ivent.find(params[:id])
      ivent.update(ivent_params)
  end
  
  private
  def ivent_params
    params.permit(:ivent_name, :text, :owner_name, :start_day, :end_day,:place, :url, :image)
  end
  
  def move_to_index
    redirect_to action: :index unless user_signed_in?
  end
  
end
