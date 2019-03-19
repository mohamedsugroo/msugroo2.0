class Post < ApplicationRecord
	extend FriendlyId
	friendly_id :title, use: :slugged

	has_attached_file :featuredimage, styles: { medium: "600x600>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
	validates_attachment_content_type :featuredimage, content_type: /\Aimage\/.*\z/

end
