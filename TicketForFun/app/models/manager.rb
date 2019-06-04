class Manager < ApplicationRecord

    has_secure_password

    VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i

    validates :code, presence: true, length: { minimum: 6, maximum: 8 }
    validates :name, presence: true, length: { maximum: 50 }
    validates :password_digest, length: { minimum: 6 }
    validates :email, presence: true, length: { maximum: 255 }, 
                                       format: { with: VALID_EMAIL_REGEX },
                                       uniqueness: { case_sensitive: true }

end
