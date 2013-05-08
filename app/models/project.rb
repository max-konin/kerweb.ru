class Project < ActiveRecord::Base
  attr_accessible :body, :desc, :href, :name, :pic, :top
end
