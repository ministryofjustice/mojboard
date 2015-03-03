json.array!(@events) do |event|
  json.extract! event, :id, :name, :description, :details, :organiser_id, :start_time, :end_time, :start_date, :end_date
  json.url event_url(event, format: :json)
end
