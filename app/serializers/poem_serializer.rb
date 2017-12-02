class PoemSerializer < ActiveModel::Serializer
  attributes :id, :title, :color
  has_many :magnets
  has_one :user
end
