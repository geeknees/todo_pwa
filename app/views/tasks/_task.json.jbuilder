json.extract! task, :id, :title, :content, :due_date, :created_at, :updated_at
json.url task_url(task, format: :json)
json.content task.content.to_s
