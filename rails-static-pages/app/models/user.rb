class User < ActiveRecord::Base

  before_save { self.mail = mail.downcase 
  before_create :create_remember_token
  
  attr_accessor :name, :mail
  
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :mail, presence: true, format: { with: VALID_EMAIL_REGEX }, uniqueness: true
  
  validates :name, presence: true, uniqueness: { case_sensitive: false }
  
  has_secure_password
  validates :password, length: { minimum: 6 }

  def User.new_remember_token
    SecureRandom.urlsafe_base64
  end

  def User.digest(token)
    Digest::SHA1.hexdigest(token.to_s)
  end

  def create_remember_token
      self.remember_token = User.digest(User.new_remember_token)
  end
    
end