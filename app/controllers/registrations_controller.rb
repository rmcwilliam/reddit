class RegistrationsController < ApplicationController

  def new
    @user = User.new
    render :new 
  end


  def create 
    @user = User.new(name: params[:username],
                     email: params[:email],
                     password: params[:password])

    if @user.save
      redirect_to links_path
    else
      render :new
    end
  end
end