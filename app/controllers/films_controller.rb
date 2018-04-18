class FilmsController < ApplicationController

  def show
    @year = Year.find(params[:year_id])
    @film = Film.find(params[:id])
    render :show
  end

  def edit
    @year = Year.find(params[:year_id])
    @film = Film.find(params[:id])
    render :edit
  end

  def update
    @film = Film.find(params[:id])
  end

  private
    def films_params
      params.require(:film).permit(:title, :director, :year_id, :genre, :opening_gross)
    end
end
