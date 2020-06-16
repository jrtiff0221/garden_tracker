class Produce < ApplicationRecord
    validates :produce_name, :category, presence: true
    validates :produce_name, uniqueness: { scope: :category }

    has_many :gardens
    has_many :users, through: :gardens
    accepts_nested_attributes_for :gardens
    
    scope :order_by_category, -> {order(:category)}


    scope :order_by_category, -> {order(:category)}
    scope :search_by_category, -> (search_category){where("category = ?", search_category)}

end
