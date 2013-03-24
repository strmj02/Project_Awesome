class UsersController < ApplicationController

   def index
      @users = User.all
   end

   def show
      @user = User.find(params[:id])
   end

   def edit
      @user = User.find(params[:id])
   end
   
   def destroy

   end

   def create
      @user = User.new(params[:user])
      
      if @user.save
         redirect_to users_path, :notice => "User was saved"
      else
         render "new"
      end
   end

   def new
      @user = User.new
   end

   def update
      @user = User.find(params[:id])
      if @user.update_attributes(params[:user])
         redirect_to users_path
      else
	 redner "edit"
      end
   end

end
