class Produce < ApplicationRecord
    validates :name, :category, presence: true
    
    has_many :gardens
    has_many :users, through: :gardens
    
    
    
    scope :order_by_category, -> {order(:category)}
    scope :vegetables, -> {where(category: "Vegetable")}
    scope :fruits, -> {where(category: "Fruit")}
    scope :herbs, -> {where(category: "Herb")}
    scope :flowers, -> {where(category: "Flower")}
    scope :miscellaneous, ->{where(category: "Miscellanous")}
end
