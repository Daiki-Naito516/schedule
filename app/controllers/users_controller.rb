class UsersController < ApplicationController
  def index
    @users = Schedule.all
  end
  
  def new
    @user = Schedule.new
  end
  
  def create
    @user = Schedule.new (params.permit(:title, :start, :finish, :all_day, :content))
    if @user.save
      flash[:notice] = "スケジュールを登録しました"
      redirect_to :users
    else
      render "new"
    end
  end
  
  def show
    @user = Schedule.find(params[:id])
  end
  
  def edit
  end
  
  def update
  end
  
  def destroy
  end
end
