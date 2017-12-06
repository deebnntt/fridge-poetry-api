class User < ApplicationRecord

  has_secure_password

  has_many :poems
  has_many :likes

end
