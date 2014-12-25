json.array!(@criticisms) do |criticism|
  json.extract! criticism, :id, :content, :course_id
  json.url criticism_url(criticism, format: :json)
end
