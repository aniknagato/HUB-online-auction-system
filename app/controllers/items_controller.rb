class ItemsController < ApplicationController

    def index
        @items = Item.all
    end

    def stopauction
        @item = Item.find(params[:id])
        @bids = Biddingtable.where(:item_id => params[:id])
        @item.update(status: "deactive")

        unique = 1
        max = 0
        value = 0
        bidderid = 0
        array = []

        @bids.each do |bid|
            array.push(bid.bidding_price)
        end

        array.sort!{|x,y| y <=> x}
        lnth = array.length


        if lnth == 1
            value = array[0]
            @bids.each do |bid|
                if bid.bidding_price == value
                    @winner_id = bid.bidderprofile_id
                end
            end
    
            @winner = Bidderprofile.find(@winner_id)
    
            winner = @winner.username
            newstring = "Winner: " + winner
    
            @item.update(description: newstring)
            # debugger
    
    
    
            print "***********************************************"
            redirect_to adminprofile_url(session[:user_id])
        end           

        i = 1
        value = array[0]
        while i < lnth
            if value == array[i]
                unique = 0
            end

            if unique == 0
                if value != array[i]  
                    value = array[i]
                    unique = 1
                end
            end
            i=i+1
        end

        if i==lnth-1
            if value == 0

                value = array[lnth-1]
            end
        end


        @bids.each do |bid|
            if bid.bidding_price == value
                @winner_id = bid.bidderprofile_id
            end
        end

        @winner = Bidderprofile.find(@winner_id)

        winner = @winner.username
        newstring = "Winner: " + winner

        @item.update(description: newstring)
        # debugger



        print "***********************************************"
        redirect_to adminprofile_url(session[:user_id])
    end

    def new
        @item = Item.new
        # render 'items/new.html.erb'
        @adminprofile = Adminprofile.find(params[:id])        
        @item = Item.new(adminprofile_id: @adminprofile.id)
    end

    def create
        @item = Item.new(adminprofile_id: params[:item][:adminprofile_id], 
                            item_name: params[:item][:item_name],
                            original_price: params[:item][:original_price],
                            auction_price: params[:item][:auction_price],
                            image_source: params[:item][:image_source],
                            description: params[:item][:description],
                            status: "active")
                                 

        if @item.save  
            redirect_to addeditem_path
            #redirect_to items_url
            # flash[:notice] = "items saved successfully!" 
            
        # else
        #     flash.now[:alert] = "items save failed!" 
        #     # render :new
        end    
                        
    end 

    def addeditem
        @items = Item.all
    end


    def allmineitem
        @adminprofile = Adminprofile.find(params[:id])
        @items = @adminprofile.items        
        
    end


    def show
        @item = Item.find(params[:id])
        # render 'items/show.html.erb'
    end

    def bid
        @biddingtable = Biddingtable.new
    end

end
