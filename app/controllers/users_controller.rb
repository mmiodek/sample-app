class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])

  end

  def index
  	@users = User.all
  	# debugger

  end

  def new
  	@user = User.new
  end
end
