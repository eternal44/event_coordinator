json.array!(@events) do |event|
  json.extract! event, :id, :location, :time, :event_name, :account_id
  json.url event_url(event, format: :json)
end
