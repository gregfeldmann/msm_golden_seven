class ActorsController < ApplicationController
    
    def index
       
       @actors=Actor.all
        
    end   
    
    def show
       
       @actor = Actor.find(params[:actor_id])
        
       render("actors/show.html.erb")
       
    end    
    
    def new_form
        
        render("actors/new_form.html.erb")
    
    end
    
    def create
       
       a = Actor.new
       
        a.name = params[:actor_name]
        a.bio = params[:actor_bio]
        a.dob = params[:actor_dob]
        a.image_url = params[:actor_image]
        
        a.save
        
        @current_count_actors = Actor.count
        
        render("actors/create_actor.html.erb")
       
    end    
    
    
end
