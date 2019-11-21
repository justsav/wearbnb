class CreateReviews < ActiveRecord::Migration[5.2]
  def change
    create_table :reviews do |t|
      t.text :comment
      t.integer :rating, null: false
      t.references :reservation, foreign_key: true

      t.timestamps
    end
  end
end
