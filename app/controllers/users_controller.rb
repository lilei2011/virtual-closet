class UsersController < ApplicationController
  def new
  	@user = User.new
  end

  def create
  	@user = User.new(params[:user])
  	# render text: params[:user]
    if @user.save
      redirect_to @user, notice: 'User was successfully created.'
    else
      # render :text => "here"
      render action: "new"
    end
  end

  def show
  	@user = User.find(params[:id])
  	@users =User.all

  	@items = User.find(params[:id]).items.all
  	@outfits = User.find(params[:id]).outfits.all
  	
  		
  end

end