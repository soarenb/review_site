class Review < ApplicationRecord
    belongs_to :artist
    has_many :votes

    validates :rating, presence: true
    validates :title, presence: true
    validates :description, presence: true
    validates :artist_id, presence: true
    #picture, optional
end