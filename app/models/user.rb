class User < ActiveRecord::Base
  before_save { self.email = email.downcase }
  validates :firstName, presence: true, length: { maximum: 50 }
  validates :lastName, presence: true, length: { maximum: 50 }
  validates :email, presence: true, length: { maximum: 100 }, uniqueness: { case_sensitive: false }
  validates :password, presence: true, length: { minimum: 6 }
  has_secure_password
end
