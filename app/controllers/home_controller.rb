class HomeController < ApplicationController
	def index
		@title = 'Kernel Web Studio'
		@projects = Project.where(:top => true)
	end
end
