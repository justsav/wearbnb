class CreateClothingItems < ActiveRecord::Migration[5.2]
  def change
    create_table :clothing_items do |t|
      t.string :category, null: false
      t.text :description
      t.string :picture, null: false
      t.string :name, null: false
      t.integer :price, null: false

      t.timestamps
    end
  end
end
