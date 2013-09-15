class Project < ActiveRecord::Base
  attr_accessible :body, :href, :name, :picture, :picture_mini

  has_attached_file :picture,
	  :styles => { :fit => "1280x" },
	  :default_url => "images/:style/missing.png",
	  :url => "images/:style/:filename",
	  :path => "public/images/:style/:filename"

  has_attached_file :picture_mini,
	  :styles => { :mini => "250x185!" },
	  :default_url => "images/:style/missing",
	  :url => "images/:style/:filename",
	  :path => "public/images/:style/:filename"
end
