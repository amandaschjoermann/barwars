class CreateDeals < ActiveRecord::Migration[5.2]
  def change
    create_table :deals do |t|
      t.integer :price
      t.string :description
      t.datetime :start_time
      t.datetime :end_time

      t.references :bar, foreign_key: true

      t.references :type, foreign_key: true

      t.timestamps
    end
  end
end
