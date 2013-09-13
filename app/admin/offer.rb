ActiveAdmin.register Offer do
	index do
		column :name
		column :email
		column :state
		action :open
	end

	filter :name

	collection_action do

	end
end
