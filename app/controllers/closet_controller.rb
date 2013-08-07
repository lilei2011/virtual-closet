class ClosetController < ApplicationController
  def index
  	 @user = User.find(current_user.id)
  	 @items = Item.where(user_id = @user.id)
  	 @item = Item.new
     @outfits = Outfit.where(user_id = @user.id)
     # render :text => @current_user
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
