class Artist < ApplicationRecord
    has_many :votes
    has_many :reviews
    #give null email and password?

    #has_many friends

    validates :name, presence: true
    validates :parlor_name, presence: true

    #name implemented in migrate file
    #user photo
    #validates :date_of_birth, presence: true
    #artist parlor[10]
    #artist description
    #validates :rating, presence: true
end