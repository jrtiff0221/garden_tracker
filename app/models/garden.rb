class Garden < ApplicationRecord
    belongs_to :user
    belongs_to :produce
end
