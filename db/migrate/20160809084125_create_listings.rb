class CreateListings < ActiveRecord::Migration
  def change
    create_table :listings do |t|
      t.references :user, index: true
      t.string :property_type
      t.string :property_location
      t.text :property_address
      t.text :property_description
      t.integer :property_price_per_night
      t.date :date_availability
      t.integer :max_people
      t.timestamps null: false
    end
  end
end
