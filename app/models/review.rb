class Review < ApplicationRecord
    belongs_to :user
    #belongs_to :artist

    validates :rating, presence: true
    validates :title, presence: true
    validates :description, presence: true
    #picture, optional
end