class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.integer :id
      t.string :name
      t.string :href
      t.text :body
      t.boolean :top

      t.timestamps
    end
  end
end
