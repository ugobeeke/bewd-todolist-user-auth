class User < ApplicationRecord
        has_many :tasks, dependent: :destroy  
        has_many :sessions
      
    validates :password, presence: true, length: { minimum: 8, maximum: 64 }
end
