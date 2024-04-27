class User < ApplicationRecord
        has_many :tasks, dependent: :destroy  
        has_many :sessions
      
    validates :username, presence: true, length: { minimum: 3, maximum: 64 }validates :password, presence: true, length: { minimum: 8, maximum: 64 }, uniqueness: true

    before_create :hash_password

    private

    def hash_password
        self.password =
        BCrypt::Password.create(self.password)
    end
end
