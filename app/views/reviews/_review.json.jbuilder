json.extract! review, :id, :company_name, :industry, :comment, :created_at, :updated_at
json.url review_url(review, format: :json)
