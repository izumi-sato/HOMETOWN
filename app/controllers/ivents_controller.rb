class IventsController < ApplicationController
  def index
    @ivents=Ivent.all
  end
  
  def new
  end
  
end
