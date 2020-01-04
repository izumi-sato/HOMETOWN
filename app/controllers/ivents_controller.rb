class IventsController < ApplicationController
  def index
    @ivents=Ivent.all
  end
end
