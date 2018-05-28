class CreateProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :products do |t|
      t.string :name
      t.string :type
      t.string :storage
      t.string :perishability
      t.string :weightandquant
      t.string :price
      t.string :furnisher

      t.timestamps
    end
  end
end
