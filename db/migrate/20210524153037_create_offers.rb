class CreateOffers < ActiveRecord::Migration[6.0]
  def change
    create_table :offers do |t|
      t.string :offer_type
      t.text :description
      t.string :offer_img
      t.string :sport_type
      t.float :longitude
      t.float :latitude
      t.integer :price
      t.string :address
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
