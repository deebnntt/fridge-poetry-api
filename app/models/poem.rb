class Poem < ApplicationRecord

  belongs_to :user, optional: true
  has_many :magnets
  accepts_nested_attributes_for :magnets
end
