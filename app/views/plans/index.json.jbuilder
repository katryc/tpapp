json.array!(@plans) do |plan|
  json.extract! plan, :id, :title, :start_time, :end_time, :body, :tools, :tags
  json.url plan_url(plan, format: :json)
end
