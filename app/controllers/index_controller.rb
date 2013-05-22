class IndexController < ApplicationController

  def index
    @items = Item.all
    @item  = Item.new
    @user  = User.new
  end


  def myitems
    @items = Item.where({:user_id => session[:current_user].id})
    @item  = Item.new

  end




  def authenticate
    @users        = User.all
    @current_user = User.find_by_email(params[:user])


    if  @current_user
      session[:current_user] = @current_user
    else
      flash[:error] = "Invalid Username"
    end

    redirect_to root_path

  end

  def logout
    reset_session
    redirect_to root_path

  end
end
