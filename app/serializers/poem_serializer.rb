class PoemSerializer < ActiveModel::Serializer
  attributes :id, :title, :color, :user_id
  has_many :magnets
  has_many :likes
  has_one :user
end
