class HomeController < ApplicationController
	def index
		@title = 'Kernel Web Studio'
		p0 = Project.new({:name => "Globerry", :desc => "Globerry", :pic => "http://placekitten.com/180/180?image=6"})
		p1 = Project.new({:name => "Kitten", :desc => "Kitten", :pic => "http://placekitten.com/180/180?image=2"})
		@projects = [p0, p1]
	end
end
