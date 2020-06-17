class User < ApplicationRecord
    
    has_secure_password
    
    has_many  :gardens
    has_many :comments, through: :gardens

    validates :username, :email, presence: true
    validates :username, :email, uniqueness: true
end
