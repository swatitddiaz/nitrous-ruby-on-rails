class UsersController < ApplicationController

  def index
    @users = User.all    
  end
  
  def show
    @user = User.find(params[:id])
    #render action: "otroNombre"
  end
  
  def edit
    @user = User.find(params[:id])
  end
  
  def new 
    @user = User.new    
  end
  
  def create
    @user = User.new(user_params)
    
    respond_to do |format|
      if @user.save
        format.html{redirect_to @user, notice: "No se pudo crear el usuario"}
      else
        format.html{render :new}    
      end
    end
  end
    
  def user_params
  
    params.require(:user).permit(:name,:mail)
    
  end
  
  
end