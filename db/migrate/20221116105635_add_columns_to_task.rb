class AddColumnsToTask < ActiveRecord::Migration[7.0]
  def change
    add_column :tasks, :estimated_hours, :integer, default: 0
    add_column :tasks, :spend_hours, :integer, default: 0
  end
end
