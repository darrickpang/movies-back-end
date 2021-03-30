class User < ApplicationRecord
    has_many :comments
    has_many :movie_users
    has_many :movies, through: :movie_users

    has_secure_password
    has_secure_password :recovery_password, validations: false

    validates :name, uniqueness: true, presence: true
end