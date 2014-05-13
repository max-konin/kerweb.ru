ActiveAdmin.register Project do

  index do
    sortable_handle_column
    column :name
    column :href
    default_actions
  end

  filter :name
  config.sort_order = 'position_asc' # assumes you are using 'position' for your acts_as_list column
  config.paginate   = false # optional; drag-and-drop across pages is not supported

  sortable # creates the controller action which handles the sorting



  form do |f|
    f.inputs "Project parameters" do
      f.input :name
      f.input :href
      f.input :body, as: :text
      f.input :picture, as: :file
      f.input :picture_mini, as: :file
    end
    f.actions
  end
end
