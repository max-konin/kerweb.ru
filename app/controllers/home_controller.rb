class HomeController < ApplicationController
	def index
		I18n.locale = params[:locale]
		@notice = params[:notice]
		@title = 'Kernel Web Studio'
		@projects = Project.order("created_at DESC").all
	end

	def formPost
		@offer = Offer.new params[:offer]
		@offer.state = 'new'
		notice = if @offer.save then t 'notice.success' else t 'notice.failure' end
		redirect_to "/", :notice => notice
	end
end
