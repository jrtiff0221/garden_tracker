class Produce < ApplicationRecord
    has_many :gardens
    has_many :users, through: :gardens
end
