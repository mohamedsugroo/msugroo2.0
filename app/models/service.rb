class Service < ApplicationRecord

	has_many :sections
	
	extend FriendlyId
	friendly_id :title, use: :slugged

	
	has_attached_file :cover, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
	validates_attachment_content_type :cover, content_type: /\Aimage\/.*\z/

end
