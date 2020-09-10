class Comment < ApplicationRecord
    validates :author, :title, :message, :user_id, presence: true


    belongs_to :user
    belongs_to :garden
    
    
    accepts_nested_attributes_for :gardens
    
    scope :order_by_title, -> {order(:title)}
    scope :search_by_title, -> (search_title){where("title= ?", search_title)}
    
end
