class PoemTag < ApplicationRecord

  has_many :poems
  has_many :tags

end
