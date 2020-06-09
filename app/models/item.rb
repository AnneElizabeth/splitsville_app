class Item < ApplicationRecord
    has_many :users, through: :lists

    validates presence: true, uniqueness: true
end
