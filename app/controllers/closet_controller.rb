class ClosetController < ApplicationController
  def index
  	 @user = current_user
  	 @items = current_user.items
  	 @item = Item.new
     @outfits = current_user.outfits
      #render :text => @items
  end

  

  def create
 	 # render text: params[:item]
 	@item = Item.new(params[:item])

 	if @item.save
      redirect_to closet_index_path, notice: 'item was successfully created.'
    else
      redirect_to closet_index_path, notice: 'item was not created.'
    end

  end
end
