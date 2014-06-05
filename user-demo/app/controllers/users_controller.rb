class UsersController < ApplicationController

  before_action :setUser,only: [:show, :edit, :update, :destroy]
  
  def index
    @users = User.all    
  end
  
  def show
    #render action: "otroNombre"
  end
  
  def new 
    @user = User.new    
  end
  
  def edit
    if @user.name=="Diego"
      flash[:notice]="Soy el usuario Diego"
      redirect_to users_url
    end
  end
  
  def create
    @user = User.new(user_params)
    
    respond_to do |format|
      if @user.save
        format.html{redirect_to @user, notice: "Usuario creado exitosamente"}
      else
        format.html{render :new}    
      end
    end
  end
    
  def update
    respond_to do |format|
      if @user.update(user_params)
        format.html{redirect_to @user, notice: "Usuario modificado exitosamente"}
      else
        format.html{render :edit}    
      end
    end
  end
  
  def destroy
    @user.destroy
    respond_to do |format|
      format.html{redirect_to @user, notice: "Usuario eliminado exitosamente"}
    end
  end
  
  private  def user_params
    params.require(:user).permit(:name,:mail)
  end
  
  private def setUser
    @user = User.find(params[:id])
  end
  
  private def setFormat
    
  end
  
  
end