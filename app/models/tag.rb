class Tag < ApplicationRecord
  has_many :poem_tags, dependent: :destroy
  has_many :poems, through: :poem_tags
end
