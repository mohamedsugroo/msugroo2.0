json.extract! work, :id, :company_name, :industry, :url, :website, :created_at, :updated_at
json.url work_url(work, format: :json)

json.blocks work.blocks.each do |block|
	json.title block.title
end
