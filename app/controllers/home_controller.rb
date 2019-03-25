class HomeController < ApplicationController

	def index

		@title = 'Web development Agency'
		@description = 'Msugroo Landing page'
		@keywords = 'Somali web development agency, Webdevelopment agency, london web development agency'

		@posts = Post.order("created_at DESC").limit(3)
		@works = Work.order("created_at DESC").limit(4)
	end

	def whoweare
	end

	def letstalk
	end

end
