class Offer < ActiveRecord::Base
  attr_accessible :name, :email, :body, :state

  STATES = %w(new viewed)

  #validates_inclusion_of :state, :in => STATES
end
