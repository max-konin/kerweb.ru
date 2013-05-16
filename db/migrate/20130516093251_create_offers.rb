class CreateOffers < ActiveRecord::Migration
  def change
    create_table :offers do |t|
	  t.string :name
	  t.string :email
	  t.text :body

      t.timestamps
    end
  end
end
