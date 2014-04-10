class UsersController < ApplicationController
  def index
  @users = User.all
  end

  def new
  	@user = User.new
  end

  def create
   @user = User.new(params[:user])
  	# render text: params[:user]
    if @user.save
      sign_in(@user)
      redirect_to @user, notice: 'User was successfully created.'
    else
      # render :text => "here"
      render action: "new"
    end
  end

  def show
    #render :text => session[:user_id]
  	#@user = User.find(params[:id])
    @user = current_user
  	
  	#@items = User.find(params[:id]).items.all
  	#@outfits = User.find(params[:id]).outfits.all
  	
  		
  end

end