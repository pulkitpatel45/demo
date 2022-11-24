class DropTable < ActiveRecord::Migration[7.0]
  def change
    drop_table :daily_status_updates
  end
end
