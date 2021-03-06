class Project < ActiveRecord::Base
  attr_accessible :body, :href, :name, :picture, :picture_mini, :position

  acts_as_list

  has_attached_file :picture,
	  :styles => { :fit => "800x" },
	  :default_url => "system/images/:style/missing.png",
	  :url => "system/images/:style/:filename",
	  :path => "public/system/images/:style/:filename"

  has_attached_file :picture_mini,
	  :styles => { :mini => "250x185!" },
	  :default_url => "system/images/:style/missing",
	  :url => "system/images/:style/:filename",
	  :path => "public/system/images/:style/:filename"
end
