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
    @user = Schedule.find_by(id: params[:id])
  end
  
  def update
    @user = Schedule.find(params[:id])
    if @user.update (params.require(:user).permit(:title, :start, :finish, :all_day, :content))
      flash[:notice] = "ユーザーIDが「#{@user.id}」の情報を更新しました"
       redirect_to :users
    else
       render "edit"
    end
  end

  def destroy
    @user = Schedule.find(params[:id])
    @user.destroy
    flash[:notice] = "削除しました"
    redirect_to :users
  end
  
  def post_params
      t.string :title
      t.string :start
      t.string :finish
      t.string :all_day
      # t.string :
      t.text :content
      t.datetime :start_time
    
  end
end
