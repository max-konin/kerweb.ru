class HomeController < ApplicationController
	before_filter :setLocale

	def setLocale
		I18n.locale = :ru
	end

	def index
		I18n.locale = params[:locale]
		@title = 'Kernel Web Studio'
		@projects = Project.where(:top => true)
	end
end
