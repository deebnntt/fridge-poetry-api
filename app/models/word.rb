class Word < ApplicationRecord

  has_many :poemswords
  has_many :poems, through: :poemswords

end
