class Work < ApplicationRecord

	extend FriendlyId
	friendly_id :company_name, use: :slugged

	has_attached_file :cover, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
	validates_attachment_content_type :cover, content_type: /\Aimage\/.*\z/

	has_many :blocks

end
