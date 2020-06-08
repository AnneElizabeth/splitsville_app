class Item < ApplicationRecord
    belongs_to :lists
    has_many :users, through: :lists
end
