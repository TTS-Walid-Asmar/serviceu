json.array!(@job_lists) do |job_list|
  json.extract! job_list, :id, :title, :description, :user_id
  json.url job_list_url(job_list, format: :json)
end
