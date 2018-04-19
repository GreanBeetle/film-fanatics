class FilmsController < ApplicationController

  def new
    @year = Year.find(params[:year_id])
    @film = Film.new
  end

  def create
    @year = Year.find(params[:year_id])
    @film = @year.films.new(films_params)
    if @film.save
      redirect_to year_path(@film.year)
    else
      render :new
    end
  end

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
    if @film.update!(films_params)
      flash[:notice] = "#{@film.title} has been updated."
      redirect_to year_path(@film.year)
    else
      render :edit
    end
  end

  def destroy
    @film = Film.find(params[:id])
    @film.destroy
    flash[:notice] = "#{@film.title} has been deleted."
    redirect_to year_path(@film.year)
  end

  private
    def films_params
      params.require(:film).permit(:title, :director, :year_id, :genre, :opening_gross, :summary)
    end
end
