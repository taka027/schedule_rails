json.extract! schedule, :id, :day, :title, :body, :created_at, :updated_at
json.url schedule_url(schedule, format: :json)
