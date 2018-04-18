class FilmsController < ApplicationController

  def show
    @year= Year.find(params[:year_id])
    @film = Film.find(params[:id])
    render :show
  end
end
