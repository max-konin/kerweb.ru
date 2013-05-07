class Project < ActiveRecord::Base
  attr_accessible :body, :href, :id, :name, :top, :pic, :desc
end
