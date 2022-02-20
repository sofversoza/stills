class User < ApplicationRecord
    has_secure_password
    has_many :reviews, dependent: :destroy
    has_many :movies, through: :reviews
    has_many :favorites, dependent: :destroy
    has_many :movies, through: :favorites


    # def password=(new_password)
    #     self.password_digest = dumb_hash(new_password)
    # end
    
    # def authenticate(password)
    #     return nil unless dumb_hash(password) == password_digest
    #     self
    # end
    
    # private
    
     
    # def dumb_hash(input)
    #     input.bytes.reduce(:+)
    # end
    
    
end
