class User < ActiveRecord::Base
  rolify :before_add => :before_add_method

  def before_add_method(role)

  end

  before_save { self.email = email.downcase } #get minuscule letters
  validates :name, presence: true
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, length: { maximum: 100 }, format: { with: VALID_EMAIL_REGEX },
            uniqueness: { case_sensitive: false }

  has_secure_password
  validates :password, length: {minimum: 6}

end
