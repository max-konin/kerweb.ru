ActiveAdmin.register Offer do
  index do
    column :name do |offer|
      link_to offer.name, admin_offer_path offer
    end
    column :email
    column :state
  end

  filter :state

  controller do
    def show
      offer = Offer.where(:id => params[:id]).first!
      offer.state = :viewed
      offer.save!
      offer
    end
  end
end
