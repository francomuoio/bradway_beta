class StandsController < ApplicationController
  def show
    @stand = Stand.find(params[:id])
  end

  def new
  end

  def create
    @stand = Stand.new(stand_params)
    if @stand.save
      redirect_to stand_path(@stand)
    else
      render :new
    end
  end

  private
  def stand_params
    params.require(:stand).permit(:title, :text)
  end
end
