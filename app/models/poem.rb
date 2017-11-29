class Poem < ApplicationRecord

  belongs_to :user, optional: true
  belongs_to :poem_tags, optional: true
  has_many :magnets
  has_many :tags, through: :poems
  accepts_nested_attributes_for :magnets

end
