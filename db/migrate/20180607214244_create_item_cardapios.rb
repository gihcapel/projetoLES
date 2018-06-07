class CreateItemCardapios < ActiveRecord::Migration[5.1]
  def change
    create_table :item_cardapios do |t|
      t.string :nome
      t.string :descricao
      t.string :preco
      t.string :string

      t.timestamps
    end
  end
end
