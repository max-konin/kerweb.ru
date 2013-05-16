#!/bin/env ruby
# encoding: utf-8

class HomeController < ApplicationController
	def index
		I18n.locale = params[:locale]
		@notice = params[:notice]
		@title = 'Kernel Web Studio'
		@projects = Project.all
	end

	def formPost
		@offer = Offer.create(params[:offer])
		if @offer.save
			redirect_to :action => "index", :notice => "Мы с удовольствием прочтем ваше сообщение."
		end
	end

	def showOffers
		@offers = Offer.all
	end
end
