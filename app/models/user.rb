class User < ApplicationRecord

    attr_reader :password

    validates :name, :password_digest, presence: true
    validates :password, length: { minimum: 6 }, allow_nil: true
    validates :email, uniqueness: true 
    
    def password=(password)
        @password = password
        self.password_digest = BCrypt::Password.create(password)
    end
end
