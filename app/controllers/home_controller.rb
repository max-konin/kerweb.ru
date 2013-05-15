class HomeController < ApplicationController
	def index
		I18n.locale = params[:locale]
		@title = 'Kernel Web Studio'
		@projects = Project.where(:top => true)
	end
end
