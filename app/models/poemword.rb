class PoemsWords < ApplicationRecord

  belongs_to :word
  belongs_to :poem

end
