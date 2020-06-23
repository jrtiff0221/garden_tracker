class Garden < ApplicationRecord
    validates :garden_name, :category, presence: true

    belongs_to :user
    has_many :comments, dependent: :destroy 

    accepts_nested_attributes_for :comments

    scope :vegetables, -> {where(category: "Vegetable")}
    scope :fruits, -> {where(category: "Fruit")}
    scope :herbs, -> {where(category: "Herb")}
    scope :flowers, -> {where(category: "Flower")}
    scope :fungi, -> {where(category: "Fungus")}
    scope :miscellaneous, ->{where(category: "Miscellanous")}

    scope :order_by_author, -> {order(:author)}
    scope :search_by_author, -> (search_author){where("author= ?", search_author)}

end
