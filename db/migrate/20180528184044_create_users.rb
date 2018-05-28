class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.string :phone
      t.string :register
      t.string :cpf
      t.string :role
      t.date :adm

      t.timestamps
    end
  end
end
