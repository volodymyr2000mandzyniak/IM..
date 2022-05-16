class Category < ApplicationRecord
    has_many :movies
    validates :name, presence: true
    has_ancestry
end
