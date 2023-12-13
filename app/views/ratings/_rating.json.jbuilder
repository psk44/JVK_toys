json.extract! rating, :id, :toy_id, :score, :review, :created_at, :updated_at
json.url rating_url(rating, format: :json)
