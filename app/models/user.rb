# email: string
# password_digest: string
# password: string [virtual]
# password_confirmation [virtual]

class User < ApplicationRecord
    has_secure_password
    has_many :twitter_accounts
    has_many :tweets

    validates :email, presence: true, format: {with: /\A[^@\s]+@[^@\s]+\z/, message: "a valid email is required"}
end
