class MoviesController < ApplicationController

  def movie_params
    params.require(:movie).permit(:title, :rating, :description, :release_date)
  end

  def show
    id = params[:id] # retrieve movie ID from URI route
    @movie = Movie.find(id) # look up movie by unique ID
    # will render app/views/movies/show.<extension> by default
  end

  def index
    @all_ratings = Movie.all_ratings
    
    @selected_ratings = params[:ratings]
    @sort_column = params[:sort_by]
    
    call_redirect = false
    
    if @selected_ratings.nil? || @selected_ratings == {}
      @selected_params = session[:ratings]
    elsif @selected_ratings != session[:ratings]    
      session[:ratings] = @selected_ratings
      call_redirect = true
    end
    
    if @sort_column.nil?
      @sort_column = session[:sort_by]
    elsif @sort_column != session[:sort_by]    
      session[:sort_by] = @sort_column
      call_redirect = true
    end
    
    
    if @selected_ratings.nil? || @selected_ratings == {}
      @selected_ratings = Hash[@all_ratings.map {|rating| [rating, 1]}]
    end
    
    if call_redirect
      redirect_to :ratings => @selected_ratings, :sort_by => @sort_column and return
    end
    
    @movies = Movie.where(rating: @selected_ratings.keys).order(@sort_column)
  end

  def new
    # default: render 'new' template
  end

  def create
    @movie = Movie.create!(movie_params)
    flash[:notice] = "#{@movie.title} was successfully created."
    redirect_to movies_path
  end

  def edit
    @movie = Movie.find params[:id]
  end

  def update
    @movie = Movie.find params[:id]
    @movie.update_attributes!(movie_params)
    flash[:notice] = "#{@movie.title} was successfully updated."
    redirect_to movie_path(@movie)
  end

  def destroy
    @movie = Movie.find(params[:id])
    @movie.destroy
    flash[:notice] = "Movie '#{@movie.title}' deleted."
    redirect_to movies_path
  end

end
