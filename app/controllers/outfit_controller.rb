class OutfitController < ApplicationController
  def create
     # render text: params

    @outfit = Outfit.new(params[:outfit])
    
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
      @outfitItems = OutfitItem.where("outfit_id =" +  params[:id])
      @Outfit = Outfit.find(params[:id])

  end

  def update
  end

  def delete
  end
end
