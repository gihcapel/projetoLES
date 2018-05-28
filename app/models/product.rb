class Product < ApplicationRecord
    validates(:name, presence: true, length: { maximum: 50 })
    validates(:type, presence: true, length: { maximum: 50 })
    validates(:storage, presence: true, length: { maximum: 50 })
    validates(:perishability, presence: true, length: { maximum: 50 })
    validates(:weightandquant, presence: true, length: { maximum: 50 })
    validates(:price, presence: true, length: { maximum: 7 })
    validates(:furnisher, presence: true, length: { maximum: 50 })
end
