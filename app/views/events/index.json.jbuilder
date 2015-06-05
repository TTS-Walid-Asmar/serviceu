json.array!(@events) do |event|
  json.extract! event, :id, :description, :cost, :where, :title, :start_time, :end_time, :start_day, :end_day
  json.url event_url(event, format: :json)
end
