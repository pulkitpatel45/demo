class AddStatusToTask < ActiveRecord::Migration[7.0]
  def change
    add_column :tasks, :status, :integer, default: 0

    tasks = Task.where('status IS NULL')
    tasks.update_all(status: 'Not Started')
  end
end
