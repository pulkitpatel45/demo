class CreateDailyStatusUpdates < ActiveRecord::Migration[7.0]
  def change
    create_table :daily_status_updates do |t|
      t.string :to
      t.date :status_date
      t.string :project
      t.time :working_hours
      t.text :task
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
