class AddPositionToTableProjects < ActiveRecord::Migration
  def change
    change_table :projects do |t|
      t.integer :position
    end
  end
end
