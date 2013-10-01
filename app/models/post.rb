class Post < ActiveRecord::Base
  attr_accessible :body, :preview, :title
  validates :title, presence: true
end
