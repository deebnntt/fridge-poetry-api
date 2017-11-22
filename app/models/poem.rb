class Poem < ApplicationRecord

  has_many :poemswords
  has_many :words, through: :poemswords
  belongs_to :user, optional: true

end
