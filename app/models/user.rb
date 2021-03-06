class User < ActiveRecord::Base
    validates :username,uniqueness: {case_sensitive: false},
    length: {minimum: 3, maximum: 25},presence: true
    VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
    validates :email,presence: true,
    length: {maximum: 100},uniqueness: {case_sensitive: false},
    format: {with: VALID_EMAIL_REGEX}
end