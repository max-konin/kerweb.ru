class RemoveTopFromProject < ActiveRecord::Migration
  def up
    remove_column :projects, :top
  end

  def down
    add_column :projects, :top, :boolean
  end
end
