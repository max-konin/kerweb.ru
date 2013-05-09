class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :name
      t.string :pic
      t.text :desc
      t.text :body
      t.string :href
      t.boolean :top

      t.timestamps
    end
  end
end
