class Produce < ApplicationRecord
    validates :produce_name, :category, presence: true
    validates :produce_name, uniqueness: { scope: :category }

    has_many :gardens
    has_many :users, through: :gardens
    
    scope :order_by_category, -> {order(:category)}
    scope :vegetables, -> {where(category: "Vegetable")}
    scope :fruits, -> {where(category: "Fruit")}
    scope :herbs, -> {where(category: "Herb")}
    scope :flowers, -> {where(category: "Flower")}
    scope :miscellaneous, ->{where(category: "Miscellanous")}

    scope :order_by_category, -> {order(:category)}
    scope :search_by_category, -> (search_category){where("category = ?", search_category)}

end
