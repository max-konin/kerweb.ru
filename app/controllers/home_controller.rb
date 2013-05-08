class HomeController < ApplicationController
	def index
		@title = 'Kernel Web Studio'
		p0 = Project.new({:name => "Globerry", :desc => "Globerry", :pic => "http://placekitten.com/180/180?image=6"})
		p1 = Project.new({:name => "Kitten", :desc => "Kitten", :pic => "http://placekitten.com/180/180?image=2"})
		@projects = [p0, p1]
	end

	def portfolio
		@title = 'Kernel Web Studio - Portfolio'
		p0 = Project.new({:name => "Globerry", :desc => "Globerry", :pic => "http://placekitten.com/180/180?image=6"})
		p1 = Project.new({:name => "Kitten", :desc => "Kitten", :pic => "http://placekitten.com/180/180?image=2"})
		p2 = Project.new({:name => "Kiity", :desc => "Globerry", :pic => "http://placekitten.com/180/180?image=3"})
		p3 = Project.new({:name => "Cutie", :desc => "Kitten", :pic => "http://placekitten.com/180/180?image=4"})
		p4 = Project.new({:name => "Ugly", :desc => "Globerry", :pic => "http://placekitten.com/180/180?image=5"})
		p5 = Project.new({:name => "Cat", :desc => "Kitten", :pic => "http://placekitten.com/180/180?image=9"})
		@projects = [p0, p1, p2, p3, p4, p5]
	end
end
