class PoemSerializer < ActiveModel::Serializer
  attributes :id, :title
  has_many :magnets
  has_one :user
end
