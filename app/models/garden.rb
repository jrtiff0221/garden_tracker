class Garden < ApplicationRecord
    validates :garden_name, :category, presence: true

    belongs_to :user
    belongs_to :produce, optional: true
    
    scope :vegetables, -> {where(category: "Vegetable")}
    scope :fruits, -> {where(category: "Fruit")}
    scope :herbs, -> {where(category: "Herb")}
    scope :flowers, -> {where(category: "Flower")}
    scope :fungi, -> {where(category: "Fungus")}
    scope :miscellaneous, ->{where(category: "Miscellanous")}

    scope :order_by_category, -> {order(:category)}
    scope :search_by_category, -> (search_category){where("category = ?", search_category)}

end
