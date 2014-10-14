class HomeController < ApplicationController
	def index
		I18n.locale = params[:locale]
		@notice = params[:notice]
		@title = 'Студия разработки Kernel Web'
		@projects = Project.order("position ASC").all
	end
	
	def landing
		render layout: 'landing'
	end

	def formPost
		@offer = Offer.new params[:offer]
		@offer.state = 'new'
		notice = if @offer.save then t 'notice.success' else t 'notice.failure' end
		redirect_to "/", :notice => notice
	end
end
