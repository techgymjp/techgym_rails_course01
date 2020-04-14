json.extract! admin_contact, :id, :title, :name, :email, :content, :status, :created_at, :updated_at
json.url admin_contact_url(admin_contact, format: :json)
