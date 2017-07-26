class DirectorsController < ApplicationController    
    
    def index
        
        @list_of_directors = Director.all.order(:created_at => :desc)
        
        render("directors/index.html.erb")
        
    end   
    
    def show
       
       @director = Director.find(params[:director_id])
     
       
       render("directors/show.html.erb")
       
    end    
    
    def new_form
       
    # @director = Director.find(params[:director_id])
       
       
      render("directors/new_form.html.erb")
    
    end
    
    def create
       
       d = Director.new
       
        d.name = params[:director_name]
        d.bio = params[:director_bio]
        d.dob = params[:director_dob]
        d.image_url = params[:director_image]
        
        d.save
        
        @current_count_directors = Director.count
        
        # render("directors/create_row.html.erb")
       redirect_to("/directors")
    end    
    
     def edit
        @director = Director.find(params["director_id"])
    
        
       # @director.name=params["director_name"]
        # @director.bio=params["director_bio"]
        # @director.dob=params["director_dob"]    
        # @director.image_url=params["director_image"]
        
        render("directors/edit_director.html.erb")
     end
   
   def update
       
       @director = Director.find(params[:director_id])
       
        @director.name=params["director_name"]
        @director.bio=params["director_bio"]
        @director.dob=params["director_dob"]
        @director.image_url=params["director_image"]
        
        @director.save
       
       render("directors/update_director.html.erb")
   end
   
   def destroy
       d = Director.find(params[:director_id])
      
       d.destroy
       d.save
       
        @remaining_directors = Director.count
        
       render("directors/destroy.html.erb")
       
        redirect_to("/directors")
   end

end