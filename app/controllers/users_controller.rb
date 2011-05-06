class UsersController < ApplicationController
  before_filter :login_required, :except => [:new, :create]
  
  def index
    @users = User.find(:all, :conditions => ["row < 20"])
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(params[:user])
    @user.row = 20
    @user.column = 20
    if @user.save
      session[:user_id] = @user.id
      redirect_to root_url, :notice => "Thank you for signing up! You are now logged in."
    else
      render :action => 'new'
    end
  end

  def edit
    @user = current_user
  end

  def seat
    @user = current_user
    @user.update_attribute(:row, params[:row])
    @user.update_attribute(:column, params[:column])
    redirect_to root_url, :notice => "Your seat has been updated, new row:"+@user.row.to_s + ", new column:"+@user.column.to_s
  end
 
  def seatjs
    @user = current_user
    @id = current_user.username
    @user.update_attribute(:row, params[:row])
    @user.update_attribute(:column, params[:column])
    flash[:notice] = "Your seat has been updated, new row: "+@user.row.to_s+" new column: " + @user.column.to_s
    respond_to do |format|
      format.html { redirect_to root_url }
      format.js
    end
  end

  def update
    @user = current_user
    if @user.update_attributes(params[:user])
      redirect_to root_url, :notice => "Your profile has been updated."
    else
      render :action => 'edit'
    end
  end
end
