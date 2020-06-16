class Garden < ApplicationRecord
    validates :garden_name, :category, presence: true

    belongs_to :user
    belongs_to :produce, optional: true


    scope :order_by_category, -> {order(:category)}
    scope :search_by_category, -> (search_category){where("category = ?", search_category)}

end
