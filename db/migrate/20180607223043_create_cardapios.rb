class CreateCardapios < ActiveRecord::Migration[5.1]
  def change
    create_table :cardapios do |t|
      t.string :nome
      t.string :descricao
      t.string :preco

      t.timestamps
    end
  end
end
