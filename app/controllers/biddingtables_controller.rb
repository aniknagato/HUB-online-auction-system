class BiddingtablesController < ApplicationController

    def index
        @biddingtables = Biddingtable.all
    end

    def bid
        @item = Item.find(params[:id])        
        @biddingtable = Biddingtable.new(item_id: @item.id)
    end

    def create
        @username = params[:username]
       
        if Bidderprofile.find_by_username(@username)

            @bidderprofile = Bidderprofile.find_by_username(@username)

            if Biddingtable.exists?(bidderprofile_id: @bidderprofile.id, item_id: params[:biddingtable][:item_id])
                flash[:alert] = "You have already bid for this item once. So you can't bid again."                
                redirect_to items_url
                
            else
                @biditem = Item.find_by_id(params[:biddingtable][:item_id])

                if params[:biddingtable][:bidding_price] <= @biditem.auction_price

                    @biddingtable = Biddingtable.new(bidding_price: params[:biddingtable][:bidding_price],
                                                    bidderprofile_id: @bidderprofile.id,
                                                    item_id: params[:biddingtable][:item_id])

                    if @biddingtable.save
                        flash[:notice] = "Bid placed successfully!"
                        redirect_to biddingtables_url            
                    end

                elsif params[:biddingtable][:bidding_price].to_f > @biditem.auction_price.to_f
                    flash.now[:alert] = "Bid failed! Bid Price cannot be greater than Bid Price Limit! Please re-enter."
                    @item = Item.find_by_id(params[:biddingtable][:item_id])        
                    @biddingtable = Biddingtable.new(item_id: @item.id)               
                    render :bid 

                else
                    @biddingtable = Biddingtable.new(bidding_price: params[:biddingtable][:bidding_price],
                                                    bidderprofile_id: @bidderprofile.id,
                                                    item_id: params[:biddingtable][:item_id])                    
                    if @biddingtable.save             
                        flash[:notice] = "Bid placed successfully!"
                        redirect_to biddingtables_url

                    elsif params[:biddingtable][:bidding_price].to_f == 0.0
                        flash.now[:alert] = "Bid failed! Bid price caanot be string! Please re-enter." 
                        @item = Item.find_by_id(params[:biddingtable][:item_id])        
                        @biddingtable = Biddingtable.new(item_id: @item.id)               
                        render :bid                        
                    end
                end    
            end
        else
            flash.now[:alert] = "Bid failed! Wrong User Name! Please re-enter."
            @item = Item.find_by_id(params[:biddingtable][:item_id])        
            @biddingtable = Biddingtable.new(item_id: @item.id)               
            render :bid            
        end                        
    end

end
