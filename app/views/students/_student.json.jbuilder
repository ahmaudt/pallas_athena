json.extract! student, :id, :preferred_name, :last_name, :major_id, :advisor_id, :created_at, :updated_at
json.url student_url(student, format: :json)
