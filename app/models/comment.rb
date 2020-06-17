class Comment < ApplicationRecord
    validates :author, :title, :message, presence: true
   

    has_many :gardens
    has_many :users, through: :gardens
    
    scope :order_by_author, -> {order(:author)}
    scope :search_by_author, -> (search_author){where("author= ?", search_author)}
    
end
