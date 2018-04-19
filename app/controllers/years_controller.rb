class YearsController < ApplicationController
  def index
    @years = Year.all

    render :index
  end

  def show
    @year= Year.find(params[:id])
    @alphabetized_films = Film.alphabetized_films
    render :show
  end

end
