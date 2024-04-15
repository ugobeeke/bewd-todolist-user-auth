class User < ApplicationRecord
        has_many :tasks, dependent: :destroy  # 
      
    validates :password, presence: true, length: { minimum: 8, maximum: 64 }
end
