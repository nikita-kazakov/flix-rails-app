class FlashdrivesController < ApplicationController

  def index
    @flashdrives = Flashdrive.all
  end

  def show
    @flashdrive = Flashdrive.find(params[:id])
  end
end
