class User < ApplicationRecord

    attr_reader :password

    validates :name, :password_digest, presence: true
    validates :password, length: { minimum: 6 }, allow_nil: true
    validates :email, uniqueness: true 

    has_and_belongs_to_many :trips
    
    def password=(password)
        @password = password
        self.password_digest = BCrypt::Password.create(password)
    end
end
