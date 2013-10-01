class Post < ActiveRecord::Base
  attr_accessible :body, :preview, :title
end
