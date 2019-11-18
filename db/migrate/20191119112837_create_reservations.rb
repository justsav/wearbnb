class CreateReservations < ActiveRecord::Migration[5.2]
  def change
    create_table :reservations do |t|
      t.references :clothing_item, foreign_key: true, null: false
      t.references :user, foreign_key: true, null: false
      t.datetime :begin_date, null: false
      t.datetime :end_date, null: false

      t.timestamps
    end
  end
end
