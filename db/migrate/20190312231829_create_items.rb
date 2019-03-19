class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :name
      t.float :cost
      t.float :listing_price
      t.float :sale_price
      t.boolean :new, default: false
      t.string :condition
      t.integer :brand_id
    end
  end
end
