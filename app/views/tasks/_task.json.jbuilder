json.extract! task, :id, :due_date, :description, :user_id, :project_id, :created_at, :updated_at
json.url task_url(task, format: :json)
