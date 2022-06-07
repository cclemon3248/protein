json.extract! task, :id, :store, :name, :protein, :calorie, :image, :created_at, :updated_at
json.url task_url(task, format: :json)
