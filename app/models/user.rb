class User < ActiveRecord::Base

  has_secure_password

  has_many :ratings
  def self.authenticate_with_credentials(email, password)
    email = email.strip.downcase
    @user = User.find_by_E_mail(email)
    if @user && @user.authenticate(password)
      true
    else
      false
    end
  end
  
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :E_mail, presence: true, uniqueness: {case_sensitive: false}
  validates :password, presence: true, length: { minimum: 6 }
  validates :password_confirmation, presence: true
  
end
