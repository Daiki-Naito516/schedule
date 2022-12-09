class CreateSchedules < ActiveRecord::Migration[6.1]
  def change
    create_table :schedules do |t|
      t.string :title
      t.string :start
      t.string :finish
      t.string :all_day
      # t.string :
      t.text :content
      t.datetime :start_time
      t.timestamps
    end
  end
end
