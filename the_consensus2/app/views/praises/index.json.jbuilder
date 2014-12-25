json.array!(@praises) do |praise|
  json.extract! praise, :id, :content, :course_id
  json.url praise_url(praise, format: :json)
end
