class CreateClothingItems < ActiveRecord::Migration[5.2]
  def change
    create_table :clothing_items do |t|
      t.string :category
      t.text :description
      t.string :picture
      t.string :name
      t.integer :price

      t.timestamps
    end
  end
end
