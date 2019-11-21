class AddGenderAndBrandToClothingItem < ActiveRecord::Migration[5.2]
  def change
    add_column :clothing_items, :gender, :string, null: false
    add_column :clothing_items, :brand, :string, null: false
  end
end
