class MoviesController < ApplicationController    
    
    def index
        
        @list_of_movies = Movie.all.order(:created_at => :desc)
        
        render("movies/index.html.erb")
        
    end   
    
    def show
       
       @movie = Movie.find(params[:movie_id])
        
       render("movies/show.html.erb")
       
    end    
    
    def new_form
       
        
        render("movies/new_form.html.erb")
    
    end
    
    def create
       
       m = Movie.new
       
        m.title = params[:movie_title]
        m.year = params[:movie_year]
        m.duration = params[:movie_duration]
        m.description = params[:movie_description]
        m.image_url = params[:movie_image]
        
        m.save
        
        @current_count_movies = Movie.count
        
        render("movies/create_row.html.erb")
       
    end    
    
     def edit
        @movies = Movie.find(params["movie_id"])
    
        render("movies/edit_movie.html.erb")
     end
   
   def update
       
       @movie = Movie.find(params[:movie_id])
       
        @movie.title=params["movie_title"]
        @movie.year=params["movie_year"]
        @movie.duration=params["movie_duration"] 
        @movie.description=params["movie_description"]
        @movie.image_url=params["movie_image"]
       
       @movie.save
       
       render("movies/update_movie.html.erb")
   end
   
   def destroy
       m = Movie.find(params[:movie_id])
      
       m.destroy
       m.save
       
        @remaining_movies = Movie.count
        
     #  render("movies/destroy.html.erb")
       
        redirect_to("/movies")
   end

end