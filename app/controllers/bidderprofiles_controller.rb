class BidderprofilesController < ApplicationController
    
    before_action :authorize, except: [:new, :create]


    def index
        print "**********************************************"
        print session
        @bidderprofiles = Bidderprofile.all
        # render 'bidderprofiles/index.html.erb'
    end    

    def allbidders
        @bidderprofiles = Bidderprofile.all
        @adminprofile = Adminprofile.new


        # render 'bidderprofiles/index.html.erb'
    end



    def new
        @bidderprofile = Bidderprofile.new
        # render 'bidderprofiles/new.html.erb'
    end

    def create
        @bidderprofile = Bidderprofile.new(first_name: params[:bidderprofile][:first_name],
                                 last_name: params[:bidderprofile][:last_name],
                                 date_of_birth: params[:bidderprofile][:date_of_birth],
                                 address: params[:bidderprofile][:address],
                                 city: params[:bidderprofile][:city],
                                 state: params[:bidderprofile][:state],
                                 zipcode: params[:bidderprofile][:zipcode],
                                 country: params[:bidderprofile][:country],
                                 phone: params[:bidderprofile][:phone],
                                 email: params[:bidderprofile][:email],
                                 username: params[:bidderprofile][:username],
                                 password: params[:bidderprofile][:password])
                    
        if @bidderprofile.save             
            redirect_to login_url
            flash[:notice] = "Bidderprofile saved successfully!" 
            
        else
            flash.now[:alert] = "Bidderprofile save failed!" 
            render :new
        end    
                        
    end    

    def show
        @bidderprofile = Bidderprofile.find(params[:id])
        # render 'bidderprofiles/show.html.erb'
    end


    def edit
        @bidderprofile = Bidderprofile.find(params[:id])
        # render 'bidderprofiles/edit.html.erb'
    end

    def update
        @bidderprofile = Bidderprofile.find(params[:id])
        
        if @bidderprofile.update(first_name: params[:bidderprofile][:first_name],
            last_name: params[:bidderprofile][:last_name],
            date_of_birth: params[:bidderprofile][:date_of_birth],
            address: params[:bidderprofile][:address],
            city: params[:bidderprofile][:city],
            state: params[:bidderprofile][:state],
            zipcode: params[:bidderprofile][:zipcode],
            country: params[:bidderprofile][:country],
            phone: params[:bidderprofile][:phone],
            email: params[:bidderprofile][:email],
            username: params[:bidderprofile][:username],
            password: params[:bidderprofile][:password])

            flash[:notice] = "Bidderprofile saved successfully!"       
            redirect_to bidderprofile_url(params[:id])
        else
            flash.now[:alert] = "Bidderprofile save failed!"            
            render :edit
        end
           
    end

    def showbids

        @bidderbids = Biddingtable.where(bidderprofile_id: params[:id])
        
    end

	def destroy
		@bidder = Bidderprofile.find(params[:id])
		if @bidder.destroy
            flash[:notice] = "Bidder deleted successfully."
            # @biddingtables = Biddingtable.all
            Biddingtable.where(bidderprofile_id: params[:id]).destroy_all
            # @biddingtables.each do |biddingtable|
            #     if ( biddingtable.bidderprofile_id == params[:id] )
            #         biddingtable.destroy
            #     end
            # end
			redirect_to showallbidderprofiles_url
		else
			flash[:alert] = "Bidder delete failed."
			render :index
		end
	end        


end
