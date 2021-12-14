class SessionsController < ApplicationController
  before_action :check_logged_in ,only:[:new,:create]
  def new

  end
  def create
      user=User.find_by(username: params[:session][:username].downcase)
      if user && user.authenticate(params[:session][:password])
        session[:user_id]=user.id
        flash[:success]="Logged in successfully"
        redirect_to root_path
      else
        flash.now[:error]="Invalid username/password"
        render :new
      end
  end
  def destroy
    session[:user_id]=nil
    flash[:success]="Logged Out successfully"
    redirect_to login_path
  end
  private
  def check_logged_in
    if logged_in?
      flash[:success]="Already logged in"
      redirect_to root_path
    end

  end

end
