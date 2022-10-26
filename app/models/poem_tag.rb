class PoemTag < ApplicationRecord
  belongs_to :poem
  belongs_to :tag
end
