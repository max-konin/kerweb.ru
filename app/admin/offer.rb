ActiveAdmin.register Offer do
	index do
		column :name
		column :email
		column :state
		default_actions
	end

	filter :name
end
