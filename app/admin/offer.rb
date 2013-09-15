ActiveAdmin.register Offer do
  index do
    column :name
    column :email
    column :state
    default_actions
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
