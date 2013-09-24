class HomeController < ApplicationController
	def index
		I18n.locale = params[:locale]
		@notice = params[:notice]
		@title = 'Kernel Web Studio'
		@projects = Project.all.order("created_at DESC")
	end

	def formPost
		@offer = Offer.create(params[:offer])
		@offer.state = 'new'
		notice = if @offer.save then t 'notice.success' else t 'notice.failure' end
		redirect_to "/", :notice => notice
	end
end
