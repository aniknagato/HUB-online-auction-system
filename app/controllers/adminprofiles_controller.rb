class AdminprofilesController < ApplicationController
    
    def index
        @adminprofiles = Adminprofile.all
        # render 'adminprofiles/index.html.erb'
    end    

    def new
        @adminprofile = Adminprofile.new
        # render 'adminprofiles/new.html.erb'
    end



    def create
        @adminprofile = Adminprofile.new(first_name: params[:adminprofile][:first_name],
                                 last_name: params[:adminprofile][:last_name],
                                 date_of_birth: params[:adminprofile][:date_of_birth],
                                 address: params[:adminprofile][:address],
                                 city: params[:adminprofile][:city],
                                 state: params[:adminprofile][:state],
                                 zipcode: params[:adminprofile][:zipcode],
                                 country: params[:adminprofile][:country],
                                 phone: params[:adminprofile][:phone],
                                 email: params[:adminprofile][:email],
                                 username: params[:adminprofile][:username],
                                 password: params[:adminprofile][:password])
                    
        if @adminprofile.save             
            #redirect_to adminprofile_url(@adminprofile.id)
            redirect_to login_url
            flash[:notice] = "adminprofiles saved successfully!" 
            
        else
            flash.now[:alert] = "adminprofiles save failed!" 
            render :new
        end    
                        
    end    

    def show
        @adminprofile = Adminprofile.find(params[:id])
        # render 'adminprofiles/show.html.erb'
    end


    def edit
        @adminprofile = Adminprofile.find(params[:id])
        # render 'adminprofiles/edit.html.erb'
    end

    def update
        @adminprofile = Adminprofile.find(params[:id])
        
        if @adminprofile.update(first_name: params[:adminprofile][:first_name],
            last_name: params[:adminprofile][:last_name],
            date_of_birth: params[:adminprofile][:date_of_birth],
            address: params[:adminprofile][:address],
            city: params[:adminprofile][:city],
            state: params[:adminprofile][:state],
            zipcode: params[:adminprofile][:zipcode],
            country: params[:adminprofile][:country],
            phone: params[:adminprofile][:phone],
            email: params[:adminprofile][:email],
            username: params[:adminprofile][:username],
            password: params[:adminprofile][:password])
        
            flash[:notice] = "Adminprofile saved successfully!"
            redirect_to adminprofile_url(params[:id])
        else
            flash.now[:alert] = "Adminprofile save failed!"
            render :edit
        end
           
    end
end
