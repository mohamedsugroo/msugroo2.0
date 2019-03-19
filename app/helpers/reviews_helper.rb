module ReviewsHelper
	def random_review
		Review.order("RANDOM()").first
	end
end
