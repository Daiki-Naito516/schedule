class UsersController < ApplicationController
  def index
    @schedules = Schedules.all
  end
  
  def new
    @schedule = Schedules.new
  end
  
  def create
    @schedule = Schedules.new (params.permit(:title, :start, :finish, :all_day, :content))
    if @schedule.save
      flash[:notice] = "スケジュールを登録しました"
      redirect_to :users
    else
      render "new"
    end
  end
  
  def show
    @schedule = Schedules.find (params[:id])
  end
  
  def edit
    @schedule = Schedules.find (params[:id])
  end
  
  def update
    @schedule = Schedules.find(params[:id])
    if @schedule.update (params.require(:title, :start, :finish, :all_day, :content))
      flash[:notice] = "ユーザーIDが「#{@schedule.id}」の情報を更新しました"
       redirect_to :users
    else
       render "edit"
    end
  end

  def destroy
    @schedule = Schedules.find(params[:id])
    @schedule.destroy
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
