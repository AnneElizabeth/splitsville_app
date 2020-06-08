class Item < ApplicationRecord
    belongs_to :list
    has_many :users, through: :lists

    validates presence: true
end
