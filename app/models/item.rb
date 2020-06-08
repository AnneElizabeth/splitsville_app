class Item < ApplicationRecord
    has_many :lists, through: :users
    has_many :users, through: :lists

    validates presence: true
end
