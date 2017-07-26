class ActorsController < ApplicationController
    
    def index
        
        @list_of_actors = Actor.all.order(:created_at => :desc)
        
        render("actors/index.html.erb")
        
    end   
    
    def show
       
       @actor = Actor.find(params[:actor_id])
    

       render("actors/show.html.erb")
       
    end    
    
    def new_form
        
        render("actors/new_form.html.erb")
    
    end
    
    def create
       
       @actor = Actor.new
       
        @actor.name = params["actor_name"]
        @actor.bio = params["actor_bio"]
        @actor.dob = params["actor_dob"]
        @actor.image_url = params["actor_image"]
          
        @actor.save
        
        @current_count_actors = Actor.count
        
        render("actors/create_row.html.erb")
       
    end    
    
     def edit
        @actor = Actor.find(params["actor_id"])
        
       # @actor.name=params["actor_name"]
        

        
        render("actors/edit_actor.html.erb")
     end
   
   def update
       
       @actor = Actor.find(params[:actor_id])
       
        @actor.name=params["actor_name"]
        @actor.bio=params["actor_bio"]
        @actor.dob=params["actor_dob"]    
        @actor.image_url=params["actor_image"]
        
        @actor.save
        
       
       render("actors/update_actor.html.erb")
   end
   
   def destroy
       a = Actor.find(params[:actor_id])
      
       a.destroy
       
        @remaining_actors = Actor.count
        
       render("actors/destroy.html.erb")
       
       # redirect_to("/actors")
   end

    
end
