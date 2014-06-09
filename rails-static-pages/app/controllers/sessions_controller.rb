class SessionsController < ApplicationController

  def new
  end

  def create
    
    puts "params:"
    puts params[:session][:mail]
    puts "end"
    
    user = User.find_by(mail: params[:session][:mail].downcase)
    if user && use
      
      r.authenticate(params[:session][:password])
      sign_in user
      redirect_to user
    else
      flash[:error] = 'Invalid email/password combination' # Not quite right!
      render 'new'
    end
  end

  def destroy
    sign_out
    redirect_to root_url
  end
  
end
