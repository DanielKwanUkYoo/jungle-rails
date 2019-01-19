class User < ActiveRecord::Base

  has_secure_password

  has_many :ratings

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :E_mail, presence: true
  validates :password, presence: true
end
