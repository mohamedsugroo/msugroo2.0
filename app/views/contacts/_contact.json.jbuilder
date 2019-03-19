json.extract! contact, :id, :full_name, :email, :reason, :comment, :location, :phone, :skype_user, :created_at, :updated_at
json.url contact_url(contact, format: :json)
