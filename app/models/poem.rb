class Poem < ApplicationRecord
    
    belongs_to :user
    has_many :poem_comments, dependent: :destroy
    
end
