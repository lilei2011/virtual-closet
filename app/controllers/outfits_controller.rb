class OutfitsController < ApplicationController
  def create
     # render text: params

   # raise "foo"
   # return
    @outfit = Outfit.new(params[:outfits])

    #render json: @outfit
    #return

  	  if @outfit.save
        # render text: "saved"
        # render :text => params[:item] 
          outfitItems = params[:item]
          outfitItems.each do |i|
            OutfitItem.create(:outfit_id => @outfit.id, :item_id => i)
          end
    	   	redirect_to closet_index_path, notice:"outfit saved!"	
      else
        # render text: "not saved"
         render 'new', notice: 'Product not created'
      end
  end
  

  def show
    # render :text => 'show'
    # render :text => params[:id]
   
     @outfit = current_user.outfits.find(params[:id])
     @outfitItems = @outfit.OutfitItems

  end

  def update
  end

  def delete
  end
end
