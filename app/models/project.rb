class Project < ActiveRecord::Base
  attr_accessible :body, :desc, :href, :name, :pic, :top, :picture
  has_attached_file :picture, :styles => { :mini => "250x185^" }, :default_url => "assets/missing.png", :url => "assets/workImg/:style/:filename", :path => ":rails_root/app/assets/images/workImg/:style/:filename"
end
