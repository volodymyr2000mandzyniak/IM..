class Movie < ApplicationRecord
    mount_uploader :image, ImageUploader 

    belongs_to :category
    has_many :reviews
    belongs_to :user
end
