json.array!(@courses) do |course|
  json.extract! course, :id, :name, :course_code
  json.url course_url(course, format: :json)
end
