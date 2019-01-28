class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

    has_many :reviews
    #has_many :votes
    #has_many friends

    #user photo
    #validates :date_of_birth, presence: true
    #artist description
    #validates :rating, presence: true
end
