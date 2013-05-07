class HomeController < ApplicationController
	def index
		@title = 'Kernel Web Studio'
		#@p0 = Project.new({:desc => "Globerry", :pic => "http://placekitten.com/180/180?image=6"})
		#@p1 = Project.new({:desc => "Kitten", :pic => "http://placekitten.com/180/180?image=2"})
		@projects = Array.new
	end
end
