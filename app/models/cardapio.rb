class Cardapio < ApplicationRecord
    validates :nome, presence: true, length: { maximum: 50 }
    validates :descricao, presence: true, length: { maximum: 350 }
    validates :preco, presence: true, length: { maximum: 50 }
end
