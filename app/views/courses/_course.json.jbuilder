json.extract! course, :id, :course_code, :name, :credit, :user_id, :created_at, :updated_at
json.url course_url(course, format: :json)
