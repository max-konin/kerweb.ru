class RemovePicFromProject < ActiveRecord::Migration
  def up
    remove_column :projects, :pic
  end

  def down
    add_column :projects, :pic, :string
  end
end
