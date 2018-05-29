class User < ApplicationRecord
    before_save { self.email = email.downcase }
    validates(:name, presence: true, length: { maximum: 50 })
    VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
    validates(:email, presence: true, length: { maximum: 255 },
                    format: { with: VALID_EMAIL_REGEX }, uniqueness: { case_sensitive: false})
    validates(:phone, presence: true, length: { maximum: 10 })
    validates(:register, presence: true, length: { maximum: 10 })
    validates(:cpf, presence: true, length: { maximum: 11 })
    validates(:role, presence: true, length: { maximum: 50 })
    validates(:adm, length: { maximum: 10 })
    has_secure_password
    validates(:password, presence: true, length: { minimum: 6 })
    
    # Returns the hash digest of the given string.
  def User.digest(string)
    cost = ActiveModel::SecurePassword.min_cost ? BCrypt::Engine::MIN_COST :
                                                  BCrypt::Engine.cost
    BCrypt::Password.create(string, cost: cost)
  end
end
