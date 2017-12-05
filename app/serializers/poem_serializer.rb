class PoemSerializer < ActiveModel::Serializer
  attributes :id, :title, :color, :user_id
  has_many :magnets
end
