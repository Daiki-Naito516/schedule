class ScheduleController < ApplicationController
  def hello
    @hello = "Ruby on rails スケジュール管理アプリ"
    @title = "スケジュール一覧"
  end
  
  def call
    @call = "入力可能"
  end
end
