ActiveAdmin.register Project do
  index do
    column :name
    column :href
    default_action
  end

  filter :name

  form do |f|
    f.inputs "Project parameters" do
      f.input :name
      f.input :href
      f.input :desc, :as => :text
      f.input :body, :as => :text
      f.input :picture, :as => :file
      f.input :picture_mini, as => :file
    end
    f.actions
  end
end
