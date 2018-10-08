class CreateSchedules < ActiveRecord::Migration[5.2]
  def change
    create_table :schedules do |t|
      t.date :day
      t.string :title
      t.text :body

      t.timestamps
    end
  end
end
